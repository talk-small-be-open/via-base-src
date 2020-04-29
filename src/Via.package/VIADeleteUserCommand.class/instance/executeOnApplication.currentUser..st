as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	self deleteAccount.
	
	anApplicationComponent showAccountDeletedConfirmation