finders
findPortfolioByUser: aUser
	^ VIAPlatform ifPharo: [ 
		portfolios detect: [:each | each user == aUser] ifNone: [ nil ]
	] ifGemStone: [ 
		(GsQuery fromString: 'each.user == theUser')
			bind: 'theUser' to: aUser;
			on: portfolios;
			anyIfNone: [ nil ]
	]