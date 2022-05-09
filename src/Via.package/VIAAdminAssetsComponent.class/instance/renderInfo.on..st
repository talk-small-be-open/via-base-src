rendering
renderInfo: each on: html
	html div class: 'assetTitle'; with: [
		html strong: each title.
		html text: ' ('.
		html span: (GRPrinter decimalFileSize print: each byteSize).
		html text: ')'.
	].
	html div class: 'publicComment'; with: [html pillarString: (each comment)].
	html div class: 'internalComment'; with: [html pillarString: (each internalComment)].
	html div class: 'uuid'; with: [
		html text: 'ID '.
		html text: each uuidString.
	].
	html div class: 'fileOnDisk'; with: [
		html text: 'File '.
		html text: each fileName.
		html space.
		html text: '('.
		html text: each mimeType.
		html text: ')'.
	].
	html div class: 'creationDate'; with: [
		html text: 'Created at '.
		html text: (VIAHelper germanDateAndTimeStringFor: each createdAt)]