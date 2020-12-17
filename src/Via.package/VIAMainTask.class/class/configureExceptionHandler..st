as yet unclassified
configureExceptionHandler: anApp
	(GRPlatform current label = 'Pharo')
		ifTrue: [ anApp exceptionHandler: WADebugErrorHandler ]
		ifFalse: [ anApp exceptionHandler: WAGemStoneProductionErrorHandler ]