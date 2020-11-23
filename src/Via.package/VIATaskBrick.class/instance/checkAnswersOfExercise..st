as yet unclassified
checkAnswersOfExercise: anExercise
	self childBricks do: [:each |
		each checkAnswersOfExercise: anExercise]