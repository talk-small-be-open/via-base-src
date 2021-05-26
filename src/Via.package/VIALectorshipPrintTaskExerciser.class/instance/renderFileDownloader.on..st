rendering-visitor
renderFileDownloader: aFileDownloader on: html
	html div class: 'fileDownloader'; with: [
		html iconDocument; space.
		aFileDownloader hasAsset ifTrue: [
			html text: aFileDownloader asset displayName] ifFalse: [
			html text: '[no file]'
		]
	]