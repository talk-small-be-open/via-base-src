testing
isInPortfolioModule: aModule
	^self currentPortfolio
		ifNil: [false]
		ifNotNil: [:p | p includesModuleFamily: aModule]