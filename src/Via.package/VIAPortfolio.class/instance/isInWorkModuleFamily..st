testing
isInWorkModuleFamily: aModule
	^(self includesModuleFamily: aModule) and: [
		(self exercisesForModuleFamily: aModule) anySatisfy: #isInWork]