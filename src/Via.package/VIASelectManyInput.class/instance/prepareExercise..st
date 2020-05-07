as yet unclassified
prepareExercise: anExercise
	| answerHolder orderedChoices |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: Set new.
	
	orderedChoices := self isShuffledChoices ifTrue: [self choices shuffled] ifFalse: [self choices].
	anExercise propertyAt: #orderedChoices of: self put: orderedChoices.