as yet unclassified
resetAnswersOfExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	answerHolder reset