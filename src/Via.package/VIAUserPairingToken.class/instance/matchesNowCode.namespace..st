testing
matchesNowCode: aString namespace: aNamespaceString
	^ self isValidNow and: [
		(self matchesNamespace: aNamespaceString) and: [self matchesCode: aString] ]