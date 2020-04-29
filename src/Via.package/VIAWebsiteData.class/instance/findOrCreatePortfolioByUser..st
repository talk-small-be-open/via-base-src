finders
findOrCreatePortfolioByUser: aUser
	^(self findPortfolioByUser: aUser) ifNil: [
		self addPortfolio: (VIAPortfolio new
			user: aUser;
			yourself).
		]