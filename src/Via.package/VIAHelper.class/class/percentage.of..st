as yet unclassified
percentage: aNumber of: aTotalNumber

	aTotalNumber = 0 ifTrue: [^0].

	^(aNumber * 100 / aTotalNumber) rounded asInteger