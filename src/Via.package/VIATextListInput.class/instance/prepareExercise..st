as yet unclassified
prepareExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: (OrderedCollection new: self solutions size withAll: nil).
	
	"Pre-shuffle the hint fragments"
	anExercise propertyAt: #shuffledHintFragments of: self put: self hintFragments shuffled.