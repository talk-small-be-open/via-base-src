as yet unclassified
prepareExercise: anExercise
	| answerHolder orderedChoices orderedChoicesGroups |
	answerHolder := anExercise answerOf: self.
	answerHolder presetValue: Set new.
	
	orderedChoices := self isShuffledChoices ifTrue: [self choices shuffled] ifFalse: [self choices].
	anExercise propertyAt: #orderedChoices of: self put: orderedChoices.
	
	orderedChoicesGroups := self isShuffledChoices ifTrue: [self choicesGroups collect: #shuffled] ifFalse: [self choicesGroups].
	anExercise propertyAt: #orderedChoicesGroups of: self put: orderedChoicesGroups.