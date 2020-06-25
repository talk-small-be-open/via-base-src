as yet unclassified
executeOnApplication: anApplicationComponent currentUser: aUser
	super executeOnApplication: anApplicationComponent currentUser: aUser.

	userGroup addUser: aUser.

"	anApplicationComponent flashMessage: 'main:otherVersionIsInYourPortfolio't"