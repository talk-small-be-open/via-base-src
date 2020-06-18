rendering
renderUploaderOn: html
	html heading level2; with: 'Multiple file upload'.

	errorMessage ifNotNil: [
		html div class: 'error'; with: errorMessage.
		self clearErrorMessage].

	html unorderedList
		id: 'pluploadFilelist'.

	html skAnchorButton
		id: 'pluploadBrowseButton';
		with: '+ Add files to queue'.
	html space.
	html skAnchorButton
		id: 'pluploadStartButton';
		with: 'Start upload'