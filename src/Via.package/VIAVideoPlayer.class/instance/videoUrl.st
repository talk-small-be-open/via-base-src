as yet unclassified
videoUrl
	^videoAsset ifNotNil: [:va | 
		String streamContents: [:s |
			self isFragment
				ifFalse: [s nextPutAll: va videoUrl]
				ifTrue: [s nextPutAll: (va videoUrlStart: self startSeconds stop: self endSeconds)]
	]]