initialization
initializeDefaultValues
	super initializeDefaultValues

	transcriptionPillar ifNil: [transcriptionPillar := VIAPillarObject new]