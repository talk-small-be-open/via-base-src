as yet unclassified
ensureUserIsAnonymous
	(user isNil or: [user isAnonymous not]) ifTrue: [self initializeAnonymousUser]