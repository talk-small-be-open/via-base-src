accessing
paramAt: aKey
	params ifNil: [^false].
	^params at: aKey