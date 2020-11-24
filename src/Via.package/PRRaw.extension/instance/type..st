*Via
type: aString
	aString ifNil: [ type := nil. ^ self ].
	
	type := aString asSymbol "Wegen GS"