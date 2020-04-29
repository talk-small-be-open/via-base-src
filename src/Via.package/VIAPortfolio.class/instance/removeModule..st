as yet unclassified
removeModule: aModule
	modules remove: aModule ifAbsent: [].
	moduleExercises removeKey: aModule ifAbsent: []