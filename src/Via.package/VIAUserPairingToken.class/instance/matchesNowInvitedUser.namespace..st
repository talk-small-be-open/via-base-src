testing
matchesNowInvitedUser: aUser namespace: aNamespaceString

	^ self isPaired not and: [ self isValidNow and: [
		(self matchesNamespace: aNamespaceString) and: [self invitedUser = aUser] ] ]