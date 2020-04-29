as yet unclassified
choicesString: aString
	| lines |
	lines := aString lines.
	solutions := OrderedCollection new.
	choices := lines collect: [:each |
		| item |
		item := VIADragDropAnswerItem new.
		item
			taskBrick: self;
			object: (each trimLeft: [:char | char = $* ]).
		
		(each beginsWith: '*') ifTrue: [solutions add: item].
		
		item]