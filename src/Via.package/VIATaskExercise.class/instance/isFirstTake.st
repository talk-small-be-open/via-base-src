testing
isFirstTake
	"TODO: Schöner berechnen"
	^(answers isEmpty or: [answers allSatisfy: [:each | each isEmpty or: [each allSatisfy: #isUnchecked]]])