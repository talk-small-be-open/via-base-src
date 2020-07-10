as yet unclassified
actionSend: aSymbol to: anObject
	self actionBlock: (MessageSend receiver: anObject selector: aSymbol)