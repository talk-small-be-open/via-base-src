accessing
height
	^self width
		ifBlank: [nil]
		ifNotBlank: [:w | (w asInteger / (videoAsset aspectRatio)) asInteger]