testing
playerInTurnLabel

	^ self isAnsweringMyTurn
		ifTrue: [ self playerInTurnLetter, ' Ich' ]
		ifFalse: [ self playerInTurnLetter ]