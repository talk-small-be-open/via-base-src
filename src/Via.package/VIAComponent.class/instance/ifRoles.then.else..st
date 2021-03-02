permission
ifRoles: aCollection then: aBlock else: anElseBlock
	^ (self currentUser hasAnyRole: aCollection) ifTrue: aBlock ifFalse: anElseBlock