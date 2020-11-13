as yet unclassified
goBack
	| next |
	next := stepIndex - 1.
	
	next < 1 ifTrue: [ ^ self ].
	
	stepIndex := next.

	stepIndex = 1
		ifTrue: [ self restart ]
		ifFalse: [ self gotoQAndA: currentQAndACounter ].
	