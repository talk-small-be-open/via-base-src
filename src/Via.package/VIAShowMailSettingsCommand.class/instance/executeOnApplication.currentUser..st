as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	"show the personal profile with the email settings"
	anApplicationComponent gotoMyProfile