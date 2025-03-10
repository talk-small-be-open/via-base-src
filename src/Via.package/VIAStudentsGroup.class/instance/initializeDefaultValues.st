initialization
initializeDefaultValues
	super initializeDefaultValues.
	
	teachers ifNil: [teachers := OrderedCollection new].
	studentMemberships ifNil: [studentMemberships := Dictionary new].