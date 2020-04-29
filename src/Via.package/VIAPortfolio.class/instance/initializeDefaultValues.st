as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.

	exams ifNil: [exams := OrderedCollection new ]