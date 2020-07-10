as yet unclassified
prepareExercise: anExercise
	| shuffledItems |

	shuffledItems := self items shuffled asOrderedCollection.
	(anExercise answerOf: self) presetValue: shuffledItems.