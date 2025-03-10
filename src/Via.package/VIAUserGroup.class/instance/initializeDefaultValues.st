initialization
initializeDefaultValues
	super initializeDefaultValues.
	users ifNil: [users := OrderedCollection new].