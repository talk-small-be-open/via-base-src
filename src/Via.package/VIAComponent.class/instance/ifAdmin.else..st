permission
ifAdmin: aBlock else: anElseBlock
	^self session isAdminSession ifTrue: aBlock ifFalse: anElseBlock