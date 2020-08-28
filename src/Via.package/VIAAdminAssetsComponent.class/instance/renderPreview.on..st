rendering
renderPreview: anAsset on: html
	html div style: 'width:150px;'; with: [
		anAsset renderPreviewOn: html
	]