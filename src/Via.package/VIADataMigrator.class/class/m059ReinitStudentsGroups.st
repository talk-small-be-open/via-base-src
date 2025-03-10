as yet unclassified
m059ReinitStudentsGroups
	VIAHelper allInstancesOfClass: VIAStudentsGroup do: [ :each |
		each initializeDefaultValues.
	]