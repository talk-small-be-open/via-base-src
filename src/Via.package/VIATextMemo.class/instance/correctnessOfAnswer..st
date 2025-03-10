as yet unclassified
correctnessOfAnswer: anAnswer
	^ self isCheckable ifFalse: [ 100 ] ifTrue: [
		anAnswer hasTeacherPoints ifTrue: [ 100 ] ifFalse: [ 0 ]
		"VIAHelper percentage: anAnswer teacherPoints of: self maxPoints" ]