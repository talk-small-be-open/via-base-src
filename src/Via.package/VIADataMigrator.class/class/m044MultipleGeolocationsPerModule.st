as yet unclassified
m044MultipleGeolocationsPerModule
	VIAHelper allInstancesOfClass: VIAModule do: [:each |
		each initializeDefaultValues.
		(each instVarNamed: 'geocode') ifNotNil: [:gc |
			each addGeocode: gc ]
	]