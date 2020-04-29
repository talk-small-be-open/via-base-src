as yet unclassified
prepareExercise: anExercise
	| answerHolder  |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: OrderedCollection new.
	
"	orderedChoices := self isShuffledChoices ifTrue: [self choices shuffled] ifFalse: [self choices].
	anExercise propertyAt: #orderedChoices of: self put: orderedChoices."

