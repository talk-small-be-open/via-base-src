as yet unclassified
m024IntroduceModuleHistory
	VIAHelper allInstancesOfClass: VIAModule do: [:each |
		each initializeDefaultValues.
		each moduleHistory addVersion: each
	].