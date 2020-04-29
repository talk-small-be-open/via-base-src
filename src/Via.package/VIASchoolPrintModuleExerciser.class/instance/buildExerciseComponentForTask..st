as yet unclassified
buildExerciseComponentForTask: aTask
	^self taskExerciserClass exercise: (moduleExercise exerciseForTask: aTask)