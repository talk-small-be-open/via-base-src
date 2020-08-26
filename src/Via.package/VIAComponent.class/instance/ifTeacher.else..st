permission
ifTeacher: aBlock else: anElseBlock
	^self currentUser isTeacher ifTrue: aBlock ifFalse: anElseBlock