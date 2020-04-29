actions
performWithExerciseLevel: aLevel
	self ifSimpleSearch: [
		query clear].
	query exerciseLevel: aLevel.
	self performSearch