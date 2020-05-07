as yet unclassified
addModuleExercise: aModuleExercise
	| module |
	module := aModuleExercise module.
	self addModule: module.
	
	moduleExercises at: module put: aModuleExercise.