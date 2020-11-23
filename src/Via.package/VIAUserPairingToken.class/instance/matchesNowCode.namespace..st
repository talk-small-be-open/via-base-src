testing
matchesNowCode: aString namespace: aNamespaceString
	^ self isValidNow and: [ aNamespaceString = namespace and: [code = aString] ]