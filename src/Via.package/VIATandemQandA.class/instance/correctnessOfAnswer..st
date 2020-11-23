as yet unclassified
correctnessOfAnswer: anAnswer
	"The correctness has been evaluated by the other player in the tandem game"
	anAnswer = 'correct' ifTrue: [ ^100 ].
	anAnswer = 'notCorrect' ifTrue: [ ^0 ].

	^ 0