testing
isExecutable
	^self isExpired not and: [self isMaxExecutionsReached not]