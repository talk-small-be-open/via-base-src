finders
removePortfolioByUser: aUser
	(self findPortfolioByUser: aUser) ifNotNil: [:p |
		self removePortfolio: p
	]