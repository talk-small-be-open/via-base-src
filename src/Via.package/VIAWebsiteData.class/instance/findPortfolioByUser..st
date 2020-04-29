finders
findPortfolioByUser: aUser
	^portfolios detect: [:each | each user == aUser] ifNone: nil