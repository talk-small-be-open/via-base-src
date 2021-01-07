permission
ifNotTeacher: aBlock
	^self currentUser isTeacher ifFalse: aBlock