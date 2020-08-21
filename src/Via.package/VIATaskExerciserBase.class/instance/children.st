hooks
children
	^ taskBrickSubExercisers
		ifBlank: [ #() ]
		ifNotBlank: [ taskBrickSubExercisers values ]