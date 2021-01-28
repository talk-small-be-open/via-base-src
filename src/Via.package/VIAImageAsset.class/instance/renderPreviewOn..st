rendering
renderPreviewOn: html
	html zoomBoxLazyImage: self previewImageUrl with: [:tag |
		tag
			width: self width;
			style: 'width:100%; max-height:100%;'
	]