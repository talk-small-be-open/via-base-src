testing
otherPlayerNumber
	^ (self playerInTurn = 1) ifTrue: [ 2 ] ifFalse: [ 1 ]