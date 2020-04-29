testing
isMaxExecutionsReached
	^maxExecutions notNil and: [executionsCount >= maxExecutions]