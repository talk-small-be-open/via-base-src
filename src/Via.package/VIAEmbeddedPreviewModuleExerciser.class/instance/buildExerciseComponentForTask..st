as yet unclassified
buildExerciseComponentForTask: aTask
	| exercise |

	exercise := (moduleExercise exerciseForTask: aTask).
	^VIAExerciserEmbeddedPreviewComponent exercise: exercise