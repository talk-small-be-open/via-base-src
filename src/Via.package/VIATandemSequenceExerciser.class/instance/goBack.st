as yet unclassified
goBack
	currentNumber = 1
		ifTrue: [ self restart ]
		ifFalse: [ self gotoQAndA: currentNumber - 1 ].
	