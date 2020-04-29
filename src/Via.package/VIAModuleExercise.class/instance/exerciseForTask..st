as yet unclassified
exerciseForTask: aTask
	^taskExercises at: aTask ifAbsentPut: [
		VIATaskExercise task: aTask moduleExercise: self]