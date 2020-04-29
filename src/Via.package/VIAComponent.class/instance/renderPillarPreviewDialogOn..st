rendering-pillar
renderPillarPreviewDialogOn: html
	html div
		style: 'display: none';
		id: 'pillarPreviewDialog';
		onClick: (html jQuery this hide);
		with: [
"			html strong: 'Pillar formatting preview (no interaction)'."
			html div
				class: 'pillarPreview';
				id: 'pillarPreview';
				with: '(click on one of the preview links, to see a formatted preview of your pillar text)'.
	]
		
