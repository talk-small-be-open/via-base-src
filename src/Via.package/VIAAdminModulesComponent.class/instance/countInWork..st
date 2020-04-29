as yet unclassified
countInWork: aModule
	^self wd portfolios count: [:each |
		(each includesModule: aModule) and: [(each exerciseForModule: aModule) isInWork]]