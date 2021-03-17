as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.
	cachedFileExists ifNil: [ self clearFileExistsCache ]