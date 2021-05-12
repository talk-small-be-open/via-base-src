testing
matchesNowInvitedUser: aUser namespace: aNamespaceString

	^ self isSealed not and: [ self isValidNow and: [
		(self matchesNamespace: aNamespaceString) and: [self invitedUser = aUser] ] ]