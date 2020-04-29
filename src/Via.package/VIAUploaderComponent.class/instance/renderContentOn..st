as yet unclassified
renderContentOn: html
	html div class: 'uploader'; with: [
		self renderUploadFormOn: html]