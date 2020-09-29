as yet unclassified
matchesSearchString: aString
	^ {title. internalComment. comment. self uuidString. self fileName} anySatisfy: [:each |
		each notBlank and: [each includesSubstring: aString caseSensitive: false]]