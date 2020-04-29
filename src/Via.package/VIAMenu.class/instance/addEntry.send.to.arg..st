as yet unclassified
addEntry: aLabelString send: aSymbol to: anObject arg: anArgument
	^ self addEntry: aLabelString action: (MessageSend receiver: anObject selector: aSymbol argument: anArgument)