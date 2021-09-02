as yet unclassified
normalizeAccents: aString
	"Translates accentuated characters into their basic form, without accents"
	AccentNormalizationMap ifNil: [self initializeAccentNormalizationMap].
	^self translateString: aString map: AccentNormalizationMap