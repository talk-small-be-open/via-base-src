as yet unclassified
m026ModuleAsExam
	VIAHelper allInstancesOfClass: VIAModule do: [:each |
		each initializeDefaultValues
	].

	VIAHelper allInstancesOfClass: VIAModuleExercise do: [:eachMe |
		eachMe taskExercisesDo: [:eachTe | eachTe moduleExercise: eachMe]
	].

	VIAHelper allInstancesOfClass: VIAPortfolio do: [:each |
		each moduleExercises do: [:eachMe | eachMe user: each user]
	].

	VIADatabase current initializeDefaultValues