permission
ifTeacher: aBlock else: anElseBlock
	^ (self currentUser notNil and: [self currentUser isTeacher])
		ifTrue: aBlock ifFalse: anElseBlock