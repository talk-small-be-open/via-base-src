as yet unclassified
isValidPasswordHash: aString
	aString ifBlank: [^false].
	
	^passwordHash = aString