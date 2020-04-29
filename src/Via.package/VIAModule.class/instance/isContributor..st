testing
isContributor: aUser
	^(self isAuthor: aUser) or: [self isCoAuthor: aUser]