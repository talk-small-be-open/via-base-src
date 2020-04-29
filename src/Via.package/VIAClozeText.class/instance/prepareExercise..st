as yet unclassified
prepareExercise: anExercise
	| choices |

	super prepareExercise: anExercise.

	self placeholders do: [:each |
		each prepareExercise: anExercise].

	"DragDrop fliegende Elemente vorbereiten"
	choices := (self dragDropPlaceholders
		gather: [:each | each choices]) shuffled.
	anExercise propertyAt: #shuffledDragDropChoices of: self put: choices.
