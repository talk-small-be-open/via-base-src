as yet unclassified
moduleExerciseForStudent: aStudent
	"Liefert ein bereits vorhandenes oder ein Blank-Neues Exercise"
	^moduleExercises detect: [:each | each user = aStudent] ifNone: [
		moduleExercisesInProgress detect: [:each | each user = aStudent] ifNone: [
			| new |
			new := VIAModuleExercise module: module user: aStudent.
			self registerModuleExercise: new.
			new
		]]