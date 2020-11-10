rendering
renderInfo: each on: html
	html div: [
		html span: each title.
		html text: ' ('.
		html span: (GRPrinter decimalFileSize print: each byteSize).
		html text: ')'.
	].
	html div class: 'publicComment'; with: (each comment).
	html div class: 'internalComment'; with: (each internalComment).
	html div class: 'fileOnDisk'; with: [
		html text: each fileName.
		html space.
		html text: '('.
		html text: each mimeType.
		html text: ')'.
	]