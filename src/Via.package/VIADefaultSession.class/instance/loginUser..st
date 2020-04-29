as yet unclassified
loginUser: aUser
	super loginUser: aUser.

	portfolio := self wd findOrCreatePortfolioByUser: aUser.
	portfolio cleanup