rendering
renderContentOn: html
	| id idPreview |
	
	id := html nextId.
	idPreview := html nextId.
	
	html skAnchorButton
		callback: [ self close ];
		with: 'Close'.
	html div class: 'pillarInput'; with: [
		html textArea
			placeholder: 'Put your Pillar here ...';
			id: id;
			class: 'pillar';
			onInput: ((
				((html jQuery id: idPreview) load)
					callback: [:value | self pillar: value greaseString]
						value: (JSStream on: '$("#', id greaseString, '").val()');
					html: [:h | self renderPillarPreviewOn: h]) asFunction debounce: 500);
			on: #pillar of: self.

		html div
			class: 'pillarPreview';
			id: idPreview;
			with: [self renderPillarPreviewOn: html ].
	].

	self renderPillarSyntaxHelpOn: html