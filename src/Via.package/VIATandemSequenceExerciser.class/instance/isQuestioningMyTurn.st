testing
isQuestioningMyTurn
	"Player 1 hat die erste Antwort zu geben"
	^ ((currentNumber ifNil: [1]) \\ totalPlayers) + 1 = playerNumber