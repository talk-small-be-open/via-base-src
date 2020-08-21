as yet unclassified
checkLoop: anObject ifSoAbort: aBlock
	(writtenObjects includes: anObject) ifTrue: aBlock.
	writtenObjects add: anObject.