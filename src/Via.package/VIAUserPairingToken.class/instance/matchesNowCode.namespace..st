testing
matchesNowCode: aString namespace: aNamespaceString
	| normalized |
	normalized := aString asLowercase.
	
	^ self isValidNow and: [ aNamespaceString = namespace and: [code = normalized] ]