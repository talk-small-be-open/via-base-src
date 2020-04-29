as yet unclassified
undropItems: aCollection keepIn: aKeepDragDropCollection exercise: anExercise
	| collection answer |

	(self dragDropPlaceholders copyWithoutAll: aKeepDragDropCollection) do: [:eachDragDrop |
		answer := (anExercise answerOf: eachDragDrop).
		collection := answer value.
		collection := collection reject: [:each | aCollection identityIncludes: each].
		answer value: collection]