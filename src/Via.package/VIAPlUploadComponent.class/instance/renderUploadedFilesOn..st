rendering
renderUploadedFilesOn: html
	self hasUploadedFiles ifTrue: [
		html div class: 'topBuffer bottomBuffer'; with: [
			html strong: 'Uploaded files, so far:'.
			tempFileReferences do: [:each |
				html div: [
					html text: each displayName]
			]]]