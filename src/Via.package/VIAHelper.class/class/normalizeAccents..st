as yet unclassified
normalizeAccents: aString
	AccentNormalizationMap ifNil: [self initializeAccentNormalizationMap].
	^self translateString: aString map: AccentNormalizationMap