permission
ifAdmin: aBlock else: anElseBlock
	^self currentUser isAdmin ifTrue: aBlock ifFalse: anElseBlock