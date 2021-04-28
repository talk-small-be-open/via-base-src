rendering
renderInfo: each on: html
	html div: [
		html span: each title.
		html text: ' ('.
		html span: (GRPrinter decimalFileSize print: each byteSize).
		html text: ')'.
	].
	html div class: 'publicComment'; with: [html pillarString: (each comment)].
	html div class: 'internalComment'; with: [html pillarString: (each internalComment)].
	html div class: 'fileOnDisk'; with: [
		html text: each fileName.
		html space.
		html text: '('.
		html text: each mimeType.
		html text: ')'.
	].
	html div class: 'creationDate'; with: (VIAHelper germanDateAndTimeStringFor: each createdAt)