testing
isDoneModuleFamily: aModule
	^(self includesModuleFamily: aModule) and: [
		(self exercisesForModuleFamily: aModule) anySatisfy: #isDone]