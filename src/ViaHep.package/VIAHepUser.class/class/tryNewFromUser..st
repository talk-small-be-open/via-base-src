as yet unclassified
tryNewFromUser: aUser
	"Try to create external user object, from the details of the normal user"

	| hepId |
	aUser hasSocialId ifFalse: [ ^ nil ].
	
	hepId := self idFromViaSocialId: aUser socialIds first.

	hepId ifNil: [ ^ nil ].

	^ self new
		id: hepId;
		yourself