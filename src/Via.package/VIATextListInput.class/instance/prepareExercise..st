as yet unclassified
prepareExercise: anExercise
	| answerHolder |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: (OrderedCollection ofSize: self solutions size).
	
	"Pre-shuffle the hint fragments"
	anExercise propertyAt: #shuffledHintFragments of: self put: self hintFragments shuffled.