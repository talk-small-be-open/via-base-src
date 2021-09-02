as yet unclassified
sanitizeUserTextInput: aString
	"OPTIMIZE: withBlanksCondensed verwenden, aber GemStone hat dies nicht für seine Unicode16"
	^(VIAHelper standardizeCharacters: (aString trimBoth))