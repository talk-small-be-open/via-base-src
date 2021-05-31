testing
isAnsweringMyTurn
	"Player 1 hat die erste Antwort zu geben"
	isTestdrive ifTrue: [ ^ false ].
	
	^ self playerInTurn = playerNumber