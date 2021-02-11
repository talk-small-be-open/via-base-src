as yet unclassified
exercisesForModuleFamily: aModule
	^self moduleExercises select: [:each | each module isSameFamily: aModule]