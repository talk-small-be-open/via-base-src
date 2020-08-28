initialization
gotoQAndA: anInteger
	| qaNumber |

	anInteger < 1 ifTrue: [ ^ self ].
	anInteger > total ifTrue: [ ^ self ].
	
	currentNumber := anInteger.

	qaNumber := sequence at: currentNumber.
	currentQAndA := taskBrick qAndAAt: qaNumber.