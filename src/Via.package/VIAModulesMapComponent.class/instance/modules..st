as yet unclassified
modules: aCollection
	self clear.
	
	aCollection do: [:each |
		each geocodes do: [:gc |
			lookup at: gc put: each ]].
	
	mapaelComponent addGeocodes: lookup keys