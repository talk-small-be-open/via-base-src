as yet unclassified
exerciseForModule: aModule
	^moduleExercises at: aModule ifAbsentPut: [
		VIAModuleExercise module: aModule user: user]