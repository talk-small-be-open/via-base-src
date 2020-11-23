as yet unclassified
childAnswerHolders
	"Answers all main answer holders of the current taskBrick and children"
	^ taskBrick childBricks collectNonBlank: [ :each |
		(self exercise hasAnswerOf: each) ifTrue: [ self exercise answerOf: each ]
	]  