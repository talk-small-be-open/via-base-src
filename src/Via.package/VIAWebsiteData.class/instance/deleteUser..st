as yet unclassified
deleteUser: aUser
	self addToTrash: aUser.
	self removePortfolioByUser: aUser.
	self removeUser: aUser.

	aUser afterDeletion