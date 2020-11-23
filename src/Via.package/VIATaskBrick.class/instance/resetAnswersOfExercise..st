as yet unclassified
resetAnswersOfExercise: anExercise
	self childBricks do: [:each |
		each resetAnswersOfExercise: anExercise]