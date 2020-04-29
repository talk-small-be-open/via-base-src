rendering
renderUploaderOn: html
	html heading level1; with: 'Multiple file upload'.
	errorMessage ifNotNil: [
		html div class: 'error'; with: errorMessage.
		self clearErrorMessage].

	html unorderedList
		id: 'pluploadFilelist'.

	html ukAnchorButton
		id: 'pluploadBrowseButton';
		with: '+ Add files to queue'.
	html space.
	html ukAnchorButton
		id: 'pluploadStartButton';
		with: 'Start upload'