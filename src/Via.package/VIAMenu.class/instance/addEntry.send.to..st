as yet unclassified
addEntry: aLabelString send: aSymbol to: anObject
	^ self addEntry: aLabelString action: (MessageSend receiver: anObject selector: aSymbol)