rendering
renderPreview: anAsset on: html
	html div style: 'width:100px;'; with: [
		anAsset renderPreviewOn: html
	]