as yet unclassified
deleteAccount
	self wd removePortfolioByUser: user.
	self wd removeUser: user.

	user anonymizeMe.