parsing
parseString: aString
	| rawParts |
	aString ifBlank: [ ^#() ].
	
	"TODO: mit regexp. GemStone?"
"	rawParts := VIATocHelper regexpIndexCode matches: VIATocHelper regexpIndexCode"
	rawParts := aString findTokens: '.-:,/'.
	
	^ rawParts collect: [ :each |
		each isAllDigits ifTrue: [each asInteger] ifFalse: [ each ] ]