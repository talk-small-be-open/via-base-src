initialization
gotoQAndA: anInteger

	anInteger < 1 ifTrue: [ ^ self ].
	anInteger > total ifTrue: [ ^ self ].
	
	currentNumber := anInteger.
	currentQAndA := taskBrick qAndAAt: currentNumber.