as yet unclassified
percentage: aNumber of: aTotalNumber

	aNumber ifNil: [ ^ 0 ].
	aTotalNumber ifNil: [ ^ 0 ].

	aTotalNumber = 0 ifTrue: [ ^ 100 ].	

	^ (aNumber * 100 / aTotalNumber) rounded asInteger