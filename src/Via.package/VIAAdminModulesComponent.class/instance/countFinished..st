as yet unclassified
countFinished: aModule
	^self wd portfolios count: [:each |
		(each includesModule: aModule) and: [(each exerciseForModule: aModule) isFinished]]