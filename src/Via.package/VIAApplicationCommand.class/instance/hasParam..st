testing
hasParam: aKey
	params ifNil: [^false].
	^params includesKey: aKey