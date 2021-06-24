rendering
renderContentOn: html
	html div class: 'uploader'; with: [
		self renderUploaderOn: html.
		self renderUploadedFilesOn: html.
		self renderJsOn: html.

		html div class: 'topBuffer'; with: [	
			self hasUploadedFiles ifTrue: [
				html anchorButton
					callback: [self goAhead];
					with: '3. OK, process uploaded files'.
				html space ].
			html anchorButton
				callback: [self cancel];
				with: 'Cancel']
	]