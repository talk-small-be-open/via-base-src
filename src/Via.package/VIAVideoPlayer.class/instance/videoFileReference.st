as yet unclassified
videoFileReference
	^videoAsset ifNotNil: [:va | 
		self isFragment
			ifFalse: [va fileReference]
			ifTrue: [va fileReferenceStart: self startSeconds stop: self endSeconds]
	]
