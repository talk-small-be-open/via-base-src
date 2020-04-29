as yet unclassified
printPoints: aNumber
	aNumber isInteger ifTrue: [^aNumber asString].
	aNumber fractionPart isZero
		ifTrue: [^aNumber integerPart asString]
		ifFalse: [^aNumber printShowingDecimalPlaces: 2].