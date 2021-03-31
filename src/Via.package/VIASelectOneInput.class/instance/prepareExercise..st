as yet unclassified
prepareExercise: anExercise
	"Wir setzen die Antwort-Presets zufällig"
	| orderedChoices orderedChoicesGroups |
	orderedChoices := self isShuffledChoices ifTrue: [self choices shuffled] ifFalse: [self choices].
	anExercise propertyAt: #orderedChoices of: self put: orderedChoices.
	
	orderedChoicesGroups := self isShuffledChoices ifTrue: [self choicesGroups collect: #shuffled] ifFalse: [self choicesGroups].
	anExercise propertyAt: #orderedChoicesGroups of: self put: orderedChoicesGroups.