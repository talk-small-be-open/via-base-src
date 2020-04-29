testing
matchesSearchString: aString
	^(title notBlank and: [title includesSubstring: aString caseSensitive: false]) or: [
		self classification matchesSearchString: aString]