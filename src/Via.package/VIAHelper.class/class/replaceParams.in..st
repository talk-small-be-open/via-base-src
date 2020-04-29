as yet unclassified
replaceParams: aParameterDictionary in: aText
	"Convention: Text will contain markers like _opportunity_ which will be replaced with the value from the dictionary"
	| text |
	text := aText.
	aParameterDictionary associationsDo: [:assoc |
		assoc value ifNotNil: [
			text := text copyReplaceAll: '_', assoc key greaseString, '_' with: assoc value greaseString]].

	^text