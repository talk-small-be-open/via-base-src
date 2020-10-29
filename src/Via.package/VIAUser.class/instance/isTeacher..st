testing
isTeacher: aBoolean
	aBoolean ifTrue: [ self addRole: #teacher ] ifFalse: [ self removeRole: #teacher ]