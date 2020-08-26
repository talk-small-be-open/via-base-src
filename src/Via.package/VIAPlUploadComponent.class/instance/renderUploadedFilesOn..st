rendering
renderUploadedFilesOn: html
	tempFileReferences ifNotBlank: [
		html div class: 'topBuffer bottomBuffer'; with: [
			html strong: 'Uploaded files:'.
			tempFileReferences do: [:each |
				html div: [
					html text: each displayName]
			]]]