testing
matchesNowInvitedUser: aUser namespace: aNamespaceString
	^ self isValidNow and: [ (self matchesNamespace: aNamespaceString) and: [self invitedUser = aUser] ]