as yet unclassified
matchesSearchString: aString
	^(super matchesSearchString: aString) or: [
		children anySatisfy: [:each | each matchesSearchString: aString]]