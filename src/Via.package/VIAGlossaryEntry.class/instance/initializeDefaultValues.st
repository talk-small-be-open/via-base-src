as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.

	description ifNil: [ description := VIAPillarSnippet new ].
	"syntax keep nil"