as yet unclassified
buildExerciseComponentForTask: aTask
	| exercise |

	exercise := (moduleExerciseGSRENAME exerciseForTask: aTask).
	^VIAExerciserEmbeddedPreviewComponent exercise: exercise