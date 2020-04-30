private-interpreting
newLine: aString

	^ aString isSymbol
		ifTrue: [ self newLineSymbolConversion at: aString ]
		ifFalse: [ aString ]