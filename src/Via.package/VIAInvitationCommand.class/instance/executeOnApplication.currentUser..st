as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	anApplicationComponent flashMessage: 'via:invitationCommandExecuted't.
	
	"Mark as invited = trusted"
	aUser beInvitee