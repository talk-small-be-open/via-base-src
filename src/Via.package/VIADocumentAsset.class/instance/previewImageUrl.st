as yet unclassified
previewImageUrl
	self isPreviewable ifFalse: [ ^ nil ].
	
	^self fileReference urlDirectory, '/', (self previewFileName)