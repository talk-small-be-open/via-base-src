as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.
	socialIds ifNil: [socialIds := Set new].
	roles ifNil: [roles := Set new]