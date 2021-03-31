rendering
renderPreviewOn: html
	html iconDocument; space; text: self fileReference fileExtension asUppercase.
	
	self isPreviewable ifTrue: [
		html zoomBoxLazyImage: self previewImageUrl with: [:tag |
			tag
"				width: self width;"
				style: 'width:100%; max-height:100%;'
		]]