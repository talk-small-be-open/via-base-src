as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.
	moduleExercises ifNil: [moduleExercises := OrderedCollection new].
	moduleExercisesInProgress ifNil: [moduleExercisesInProgress := OrderedCollection new].
	visibleAfterSubmit ifNil: [visibleAfterSubmit := false]