as yet unclassified
buildExerciseComponentForTask: aTask
	| exercise copiedExercise |
	exercise := (moduleExercise exerciseForTask: aTask).
	
	"WICHTIG um Fehlmanipulation an Prüfungsdaten grundsätzlich zu verhindern: Kopie!"
	copiedExercise := exercise copy.
	
	^VIAExerciserExamViewComponent exercise: copiedExercise.
