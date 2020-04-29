as yet unclassified
postCopy
	super postCopy.

	"answers ist ein 2-stufiger Dictionary"
	answers := answers collect: [:each |
		each copyWithCopiedElements]