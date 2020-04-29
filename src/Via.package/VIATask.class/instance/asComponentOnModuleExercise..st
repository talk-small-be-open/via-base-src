as yet unclassified
asComponentOnModuleExercise: aModuleExercise
	| exercise |
	exercise := (aModuleExercise exerciseForTask: self).
	^self asComponentOnExercise: exercise
