as yet unclassified
buildExerciseComponentForTask: aTask
	| taskIndex taskExerciser |
	taskIndex := model tasks indexOf: aTask.

	taskExerciser := VIAExerciserPrintComponent exercise: (moduleExerciseGSRENAME exerciseForTask: aTask).
	
	exerciserComponents
		at: taskIndex
		put: taskExerciser