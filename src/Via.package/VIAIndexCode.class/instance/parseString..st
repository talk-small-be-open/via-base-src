parsing
parseString: aString
	| rawParts parsedString |
	
	parsedString := aString trimBoth.
	
	parsedString ifBlank: [ ^#() ].
	
	"TODO: mit regexp. GemStone?"
"	rawParts := VIATocHelper regexpIndexCode matches: VIATocHelper regexpIndexCode"
	rawParts := parsedString findTokens: '.-:,/'.
	
	^ rawParts collect: [ :each |
		each isAllDigits ifTrue: [each asInteger] ifFalse: [ each ] ]