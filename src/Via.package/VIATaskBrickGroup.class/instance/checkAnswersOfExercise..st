as yet unclassified
checkAnswersOfExercise: anExercise
	self childrenDo: [:each |
		each checkAnswersOfExercise: anExercise]