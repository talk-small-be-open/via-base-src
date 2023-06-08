accessing
height
	videoAsset ifNil: [ ^ nil ].
	
	^ self width
		ifBlank: [ nil ]
		ifNotBlank: [ :w | (w asInteger / (videoAsset aspectRatio)) asInteger ]