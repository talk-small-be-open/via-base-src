as yet unclassified
m019ReinitPillarSnippet
	VIAHelper allInstancesOfClass: VIAPillarSnippet do: [:each |
		each pillarString: (VIAHelper pillarStringFromPillar: each pillarDocument).
	].

	VIAHelper allInstancesOfClass: VIAClozeText do: [:each |
		each beParseOk.
	]