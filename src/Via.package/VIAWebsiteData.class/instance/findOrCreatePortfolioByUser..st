finders
findOrCreatePortfolioByUser: aUser
	^(self findPortfolioByUser: aUser) ifNil: [
		self addPortfolio: (self am portfolioClass new
			user: aUser;
			yourself).
		]