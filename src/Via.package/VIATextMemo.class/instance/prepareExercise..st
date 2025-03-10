as yet unclassified
prepareExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.

	answerHolder presetValue: (VIATextMemoAnswerItem new
		taskBrick: self;
		yourself).