as yet unclassified
downloadUrl
	^videoAsset ifNotNil: [:va | 
		String streamContents: [:s |
			self isFragment
				ifFalse: [s nextPutAll: va downloadUrl]
				ifTrue: [s nextPutAll: (va downloadUrlStart: self startSeconds stop: self endSeconds)]
	]]