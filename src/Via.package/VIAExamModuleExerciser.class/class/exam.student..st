as yet unclassified
exam: anExam student: aUser
	| exercise |
	exercise := anExam moduleExerciseForStudent: aUser.
	^self exam: anExam moduleExercise: exercise