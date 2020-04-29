as yet unclassified
prepareExercise: anExercise
	self childrenDo: [:each |
		each prepareExercise: anExercise]