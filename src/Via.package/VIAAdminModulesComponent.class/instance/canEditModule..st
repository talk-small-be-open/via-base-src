as yet unclassified
canEditModule: aModule

	"If locked, only THIS admin can edit"
	aModule isLocked ifTrue: [ ^ aModule lockedByAdmin = self currentUser ].

	"Admin can edit always"
	self ifAdmin: [^true].

	"Others can edit if draft and author or coauthor"
	^aModule isDraft and: [
		(aModule authorUsers includes: self currentUser) or: [
		aModule coAuthorUsers includes: self currentUser
	]]