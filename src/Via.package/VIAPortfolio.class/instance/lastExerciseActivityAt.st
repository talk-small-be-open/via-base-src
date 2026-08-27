accessing
lastExerciseActivityAt
	^ (moduleExercises collectNonBlank: [ :each | each lastTouchedAt ])
		ifEmpty: [ nil ] ifNotEmpty: [ :all | all max ]