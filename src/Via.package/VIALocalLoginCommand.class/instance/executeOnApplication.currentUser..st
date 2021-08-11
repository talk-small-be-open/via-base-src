as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	anApplicationComponent openLoginDialogEmail: nil local: true