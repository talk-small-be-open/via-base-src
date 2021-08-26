as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser

	"Double check, that we dont mess with non-real-users (like demo, anonymous)"
	aUser isRealUser ifFalse: [ ^ self ].

	super executeOnApplication: anApplicationComponent currentUser: aUser.

	anApplicationComponent flashMessage: 'via:invitationCommandExecuted't.

	userGroup addUser: aUser.