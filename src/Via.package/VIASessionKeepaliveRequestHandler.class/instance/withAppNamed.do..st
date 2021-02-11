as yet unclassified
withAppNamed: aString do: aBlock
	^ (WAAdmin defaultDispatcher handlerAt: aString ifAbsent: [nil]) ifNotNil: aBlock