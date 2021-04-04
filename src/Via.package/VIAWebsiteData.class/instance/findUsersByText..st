finders
findUsersByText: aString
	^self users select: [:each | each matchesSearchString: aString ]