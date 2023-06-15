as yet unclassified
prepareExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: (OrderedCollection new: self solutions size withAll: nil).