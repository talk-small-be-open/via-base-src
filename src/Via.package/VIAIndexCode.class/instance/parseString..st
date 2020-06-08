parsing
parseString: aString
	| rawParts |
	aString ifBlank: [ ^#() ].
	
	rawParts := MCLPlatform splitString: aString delimiter: $. .
	
	^ rawParts collect: [ :each |
		each isAllDigits ifTrue: [each asInteger] ifFalse: [ each ] ]