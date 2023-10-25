as yet unclassified
prepareExercise: anExercise
	| answerHolder startSize |
	answerHolder := anExercise answerOf: self.
	
	startSize := 3.
	self hasMaxSolutionsCount ifTrue: [ startSize := self maxSolutionsCount ].
	
	answerHolder presetValue: (OrderedCollection ofSize: startSize).
	
	"Pre-shuffle the hint fragments"
	anExercise propertyAt: #shuffledHintFragments of: self put: self hintFragments shuffled.