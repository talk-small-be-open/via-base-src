as yet unclassified
m049ReinitTandem
	self db initializeDefaultValues.
	
	VIAHelper allInstancesOfClass: VIATandemSequence do: [ :each |
		each initializeDefaultValues ]