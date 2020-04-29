rendering
renderContentOn: html
	html div class: 'uploader'; with: [
		self renderJsOn: html.
		self renderUploaderOn: html.
		self renderUploadedFilesOn: html.

		html div class: 'topBuffer'; with: [	
			html ukAnchorButton
				callback: [self goAhead];
				with: 'OK'.
			html space.
			html anchor
				callback: [self cancel];
				with: 'Cancel']
	]