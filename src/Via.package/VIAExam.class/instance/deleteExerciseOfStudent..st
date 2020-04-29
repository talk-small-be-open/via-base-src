as yet unclassified
deleteExerciseOfStudent: aStudent
	moduleExercises removeAllSuchThat: [:each | each user = aStudent].
	moduleExercisesInProgress removeAllSuchThat: [:each | each user = aStudent].