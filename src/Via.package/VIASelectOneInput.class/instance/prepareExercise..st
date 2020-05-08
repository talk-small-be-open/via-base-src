as yet unclassified
prepareExercise: anExercise
	"Wir setzen die Antwort-Presets zufällig"
	| orderedChoices |
	orderedChoices := self isShuffledChoices ifTrue: [self choices shuffled] ifFalse: [self choices].
	anExercise propertyAt: #orderedChoices of: self put: orderedChoices.