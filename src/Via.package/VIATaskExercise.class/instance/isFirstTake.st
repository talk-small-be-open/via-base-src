testing
isFirstTake
	| mainAnswers |
	"OPTIMIZE: Schöner berechnen"
	mainAnswers := self mainAnswerHolders.
	^(mainAnswers isEmpty
		or: [mainAnswers allSatisfy: #isEmpty ])
		or: [mainAnswers allSatisfy: #isUnchecked]