as yet unclassified
checkAnswersOfExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	answerHolder needsCheck ifTrue: [
		self setAnswerHolderCorrectness: answerHolder]