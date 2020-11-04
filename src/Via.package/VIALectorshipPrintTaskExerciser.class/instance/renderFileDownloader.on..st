rendering-visitor
renderFileDownloader: aFileDownloader on: html
	html div class: 'fileDownloader'; with: [
		html iconDocument; space; text: aFileDownloader asset displayName
	]