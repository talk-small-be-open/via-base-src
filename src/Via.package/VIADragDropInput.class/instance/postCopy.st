as yet unclassified
postCopy
	super postCopy.
	"parentBrick := nil." "Wird übergeordnet wieder korrekt geseetzt"

"	choices := choices copyWithCopiedElements.
	solutions := solutions copyWithCopiedElements."
	self rebuildChoiceAndSolutionObjects
