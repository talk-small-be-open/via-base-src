as yet unclassified
setAnswerHolderExplicitPoints: anAnswerHolder
	"normally bricks do not explicitly set the points.
	Only for special type of bricks, where the correctness
	is not directly proportional to the points"
		
	(self explicitPointsOfAnswer: anAnswerHolder value) ifNotNil: [ :points |
		anAnswerHolder points: points.
	]