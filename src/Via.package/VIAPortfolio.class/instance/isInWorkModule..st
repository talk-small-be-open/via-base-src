testing
isInWorkModule: aModule
	^(self includesModule: aModule) and: [(self exerciseForModule: aModule) isInWork]