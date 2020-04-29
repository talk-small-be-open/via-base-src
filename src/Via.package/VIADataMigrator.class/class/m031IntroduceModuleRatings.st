as yet unclassified
m031IntroduceModuleRatings
	VIAHelper allInstancesOfClass: VIAModule do: [:each |
		each initializeDefaultValues
	]