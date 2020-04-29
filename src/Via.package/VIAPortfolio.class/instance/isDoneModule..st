testing
isDoneModule: aModule
	^(self includesModule: aModule) and: [(self exerciseForModule: aModule) isDone]