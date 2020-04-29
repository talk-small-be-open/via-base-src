testing
hasAnswerOf: aBrick
	^answers at: aBrick ifPresent: [:dict | dict includesKey: #answer] ifAbsent: [false]