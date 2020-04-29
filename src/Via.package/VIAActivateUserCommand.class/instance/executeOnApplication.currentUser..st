as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.
	(user activateOnWebsite: self website) ifTrue: [anApplicationComponent showActivatedUserWelcome]