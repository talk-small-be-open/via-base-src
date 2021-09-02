as yet unclassified
standardizeCharacters: aString
	"Translates same-looking variations of characters into their normal form.
	For example different apostrophe"
	CharStandardizeMap ifNil: [self initializeCharStandardizeMap].
	^self translateString: aString map: CharStandardizeMap