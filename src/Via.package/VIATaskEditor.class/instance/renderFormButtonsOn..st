rendering
renderFormButtonsOn: html
	html div class: 'buttonBar'; with: [ 
		html submitButton
			class: 'button-primary';
			callback: [ self saveAndClose ];
			with: 'Save and close'.
		html space.
		html submitButton
			class: 'button-primary';
			callback: [ self save ];
			with: 'Save'.
		html space.
		html anchorButton
			callback: [ self cancel ];
			with: 'Cancel'.
		html space.
		html popupAnchor
			class: 'button';
			dependent: true;
			windowTitle: 'Preview';
			callback: [self testdrive];
			with: 'Open preview of task ...'.
	]