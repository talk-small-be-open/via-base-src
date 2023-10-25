testing
canView: aUser
	| yes no |
	yes := [ ^ true ].
	no := [ ^ false ].
	
	"Admin always"
	aUser isAdmin ifTrue: yes.

	"Are there no accessible tasks inside?"
	(self tasks noneSatisfy: [ :each | each canView: aUser ]) ifTrue: no.
	
	"If published as normal module, then yes"
	"and: [self isNormalModule]"
	self isPublic ifTrue: yes.
	
	"if non-public, then:"
	
	"Exception: Betamodule & Betauser"
	(self isForBetatester and: [ aUser isBetatesterForWebsite: self website ]) ifTrue: yes.

	"Exception: Teacher & Exam"
	(self isExam and: [ aUser isTeacher ]) ifTrue: yes.

	"Demo"
	(self isForDemo and: [ aUser isDemo ]) ifTrue: yes.

	"TODO: What else?"

	"else, well ... "
	^ false