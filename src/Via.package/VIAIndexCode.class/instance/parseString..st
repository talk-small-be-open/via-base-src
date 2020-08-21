parsing
parseString: aString
	| rawParts |
	aString ifBlank: [ ^#() ].
	
	rawParts := aString findTokens: '.-:,/'.
	
	^ rawParts collect: [ :each |
		each isAllDigits ifTrue: [each asInteger] ifFalse: [ each ] ]