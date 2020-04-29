as yet unclassified
named: aString
	| codeString |
	codeString := aString select: [:char | char isAlphaNumeric].
	codeString ifBlank: [codeString := self getAutoCode].
	self code: codeString.
