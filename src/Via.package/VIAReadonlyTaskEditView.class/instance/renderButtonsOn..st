rendering
renderButtonsOn: html
	html div class: 'buttonBar'; with: [
		html skAnchorButton
			callback: [self close];
			with: 'Close'.
		html space.
		html popupAnchor
			dependent: true;
			class: 'button';
			windowTitle: 'Preview';
			callback: [self testdrive];
			with: 'Open preview of task ...'.
	]