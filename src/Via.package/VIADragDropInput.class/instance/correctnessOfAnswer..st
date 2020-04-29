as yet unclassified
correctnessOfAnswer: aCollection
	| correctCount divider |
	correctCount := aCollection count: [:eachAnswer | self isSolution: eachAnswer].
	divider := (self solutions size).
	
	divider isZero ifTrue: [^0].
	
	^(correctCount * 100) / divider

	"^self solutions equalElements: aCollection"