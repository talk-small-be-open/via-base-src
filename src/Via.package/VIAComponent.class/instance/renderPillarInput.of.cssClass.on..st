rendering-pillar
renderPillarInput: aSymbol of: anObject cssClass: aString on: html
	| id |
	id := html nextId.
	html div class: 'pillarInput'; with: [
		html textArea
			id: id;
			class: 'pillar';
			class: aString;
			on: aSymbol of: anObject.
		html break.
		html anchor
			class: 'pillarPreviewLink';
			onClick: (
				(((html jQuery id: 'pillarPreview') load)
					callback: [:value | self pillarPreviewString: value greaseString]
						value: (JSStream on: '$("#', id greaseString, '").val()');
					html: [:h | self renderPillarPreviewOn: h]),
					((html jQuery id: 'pillarPreviewDialog') show)
			);
			with: [
				html iconPreview; space.
				html text: 'Preview this pillar']]