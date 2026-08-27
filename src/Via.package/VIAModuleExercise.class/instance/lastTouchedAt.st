accessing
lastTouchedAt
	^ ( taskExercises collectNonBlank: [ :each | each touchedAt ] )
		ifEmpty: [ nil ]
		ifNotEmpty: [ :all | all max ]