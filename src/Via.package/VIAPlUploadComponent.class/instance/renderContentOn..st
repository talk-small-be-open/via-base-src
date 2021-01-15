rendering
renderContentOn: html
	html div class: 'uploader'; with: [
		self renderUploaderOn: html.
		self renderUploadedFilesOn: html.
		self renderJsOn: html.

		html div class: 'topBuffer'; with: [	
			html anchorButton
				callback: [self goAhead];
				with: 'OK'.
			html space.
			html anchor
				callback: [self cancel];
				with: 'Cancel']
	]