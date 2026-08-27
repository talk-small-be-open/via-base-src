as yet unclassified
findAllPortfoliosByUser: aUser
	^ self websiteDatas collectNonBlank: [ :each | each findPortfolioByUser: aUser ]