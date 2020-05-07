as yet unclassified
postCopy
	super postCopy.

	pairInputs := pairInputs copyWithCopiedElements.

	"Parent Referenz wiederherstellen"
	pairInputs do: [:each |
		each mapPairsTaskBrick: self]