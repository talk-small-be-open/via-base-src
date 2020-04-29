as yet unclassified
audioUrl
	^audioAsset ifNotNil: [:aa | 
		String streamContents: [:s |
			self isFragment
				ifFalse: [s nextPutAll: aa audioUrl]
				ifTrue: [s nextPutAll: (aa audioUrlStart: self startSeconds stop: self endSeconds)]
	]]