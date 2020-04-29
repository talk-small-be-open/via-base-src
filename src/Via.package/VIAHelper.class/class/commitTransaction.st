as yet unclassified
commitTransaction
	| success |
	
	self isGemStone ifFalse: [^true].
	
	success := System commitTransaction.
	(success and: [System transactionMode = #manualBegin]) ifTrue: [
		System beginTransaction].
	^success