as yet unclassified
audioFileReference
	^audioAsset ifNotNil: [:aa |
		self isFragment
			ifFalse: [aa fileReference]
			ifTrue: [aa fileReferenceStart: self startSeconds stop: self endSeconds]
	]
