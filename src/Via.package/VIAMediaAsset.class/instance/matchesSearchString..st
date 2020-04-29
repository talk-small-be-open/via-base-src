as yet unclassified
matchesSearchString: aString
	^ {title. internalComment. comment} anySatisfy: [:each |
		each notBlank and: [each includesSubstring: aString caseSensitive: false]]