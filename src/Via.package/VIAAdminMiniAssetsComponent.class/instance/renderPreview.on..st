rendering
renderPreview: anAsset on: html
	html div style: 'width:75px;'; with: [
		anAsset renderPreviewOn: html
	]