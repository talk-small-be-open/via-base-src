testing
canView: aUser
	| yes |
	yes := [ ^ true ].
	
	"Admin always"
	aUser isAdmin ifTrue: yes.
	
	"If published as normal module, then yes"
	"and: [self isNormalModule]"
	self isPublic ifTrue: yes.
	
	"Exception: Betamodule & Betauser"
	(self isForBetatester and: [ aUser isBetatester ]) ifTrue: yes.

	"Exception: Teacher & Exam"
	(self isExam and: [ aUser isTeacher ]) ifTrue: yes.

	"Demo"
	(self isForDemo and: [ aUser isDemo ]) ifTrue: yes.

	"TODO: What else?"

	"else, well ... "
	^false