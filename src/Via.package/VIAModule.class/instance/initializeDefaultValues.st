initialization
initializeDefaultValues
	super initializeDefaultValues.
	classification ifNil: [classification := VIAModuleClassification new].
	authorUsers ifNil: [authorUsers := OrderedCollection new].
	coAuthorUsers ifNil: [coAuthorUsers := OrderedCollection new].
	moduleHistory ifNil: [moduleHistory := VIAModuleHistory new].
	isExam ifNil: [isExam := false].
"Wir machens lazy	exams ifNil: [exams := OrderedCollection new]"
	rating ifNil: [rating := VIARating new].
	isPrivate ifNil: [isPrivate := false].
"	geocode ifNil: [geocode :=  ]"
	geocodes ifNil: [ geocodes := OrderedCollection new ].