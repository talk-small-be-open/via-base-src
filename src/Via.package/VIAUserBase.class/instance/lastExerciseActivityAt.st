accessing
lastExerciseActivityAt
	^ (self portfolios collectNonBlank: [ :each | each lastExerciseActivityAt ])
		ifEmpty: [ nil ] ifNotEmpty: [ :all | all max ]