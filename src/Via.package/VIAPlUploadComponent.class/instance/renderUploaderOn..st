rendering
renderUploaderOn: html
	html heading level2; with: 'Multiple file upload'.

	infoMessage ifNotBlank: [
		html paragraph: infoMessage].

	errorMessage ifNotNil: [
		html div class: 'error'; with: errorMessage.
		self clearErrorMessage].

	html unorderedList
		id: 'pluploadFilelist'.

	html anchorButton
		id: 'pluploadBrowseButton';
		with: '+ Add files to queue'.
	html space.
	html anchorButton
		id: 'pluploadStartButton';
		with: 'Start upload'