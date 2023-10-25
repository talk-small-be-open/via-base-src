as yet unclassified
afterSaveExercise: anExercise
	self childrenDo: [:each |
		each afterSaveExercise: anExercise]