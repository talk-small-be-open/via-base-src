as yet unclassified
m002AddPropertiesToExercises
	VIAModuleExercise allInstances do: [:each |
		each initializeDefaultValues].
	
	VIATaskExercise allInstances do: [:each |
		each initializeDefaultValues]