as yet unclassified
exercisesForModuleFamily: aModule
	^moduleExercises select: [:each | each module isSameFamily: aModule]