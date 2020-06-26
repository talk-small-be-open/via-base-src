accessing
hasSocialId: aString
	aString ifBlank: [ ^ false ].
	^ socialIds includes: aString