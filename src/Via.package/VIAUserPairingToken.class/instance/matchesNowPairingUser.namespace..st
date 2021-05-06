testing
matchesNowPairingUser: aUser namespace: aNamespaceString
	^ self isValidNow and: [ (self matchesNamespace: aNamespaceString) and: [self pairingUser = aUser] ]