as yet unclassified
isValidPassword: aString
	| valid |
	
	aString ifBlank: [^false].
	
	valid := false.
	valid := self isValidPasswordHash: (self class generatePasswordHash: aString).
		
	^valid = true