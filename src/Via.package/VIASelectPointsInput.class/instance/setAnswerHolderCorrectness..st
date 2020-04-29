as yet unclassified
setAnswerHolderCorrectness: anAnswerHolder
	super setAnswerHolderCorrectness: anAnswerHolder.

	anAnswerHolder points: (self pointsOfAnswer: anAnswerHolder value).
