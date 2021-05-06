testing
matchesCode: aString
	| normalized |
	normalized := aString asLowercase.
	
	^ code = normalized