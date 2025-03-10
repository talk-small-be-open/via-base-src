testing
needsTeacherInsightModuleExercise: aModuleExercise
	^ aModuleExercise taskExercises anySatisfy: [ :each | self needsTeacherInsightTaskExercise: each ]