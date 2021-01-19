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

	html form multipart; with: [
		"Safari 14.0.2 hat ein Bug. Upload-Dialog erscheint nicht!!!"
		html spanButton
			id: 'pluploadBrowseButton';
			with: '+ Add files to queue'.
		html space.
		html spanButton
			id: 'pluploadStartButton';
			with: 'Start upload'.
		]