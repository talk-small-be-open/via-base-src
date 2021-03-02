as yet unclassified
next: aComponent onAnswer: aBlock
	aComponent onAnswer: [ :answer |
		next := nil.
		aBlock ifNotNil: [ aBlock value: answer ]
	].

	(aComponent isKindOf: VIAAdminInspectorComponentBase) ifTrue: [
		aComponent previous: self ].
	
	next := aComponent