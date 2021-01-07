as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	"Mark as invited = trusted"
	aUser beInvitee