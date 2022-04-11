testing
isFirstTake
	^ isFirstTake = true

"	| mainAnswers |
	mainAnswers := self mainAnswerHolders.
	^(mainAnswers isEmpty
		or: [mainAnswers allSatisfy: #isEmpty ])
		or: [mainAnswers allSatisfy: #isUnchecked]"