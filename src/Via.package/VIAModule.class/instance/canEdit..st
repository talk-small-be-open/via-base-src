testing
canEdit: aUser
	| yes no |
	yes := [ ^ true ].
	no := [ ^ false ].

	"If locked, only THIS admin can edit"
	self isLocked ifTrue: [ ^ self lockedByAdmin = aUser ].

	"Admin can edit always"
	aUser isAdmin ifTrue: yes.

	"Others can edit if draft"
	self isDraft ifTrue: yes.

	"Normies can not edit, if published"
	self isReleased ifTrue: no.
	
	"...else only if author. Hm, is there a chance for that, anyway?"
	^(self authorUsers includes: aUser) or: [
		self coAuthorUsers includes: aUser
	].

"	^ false"