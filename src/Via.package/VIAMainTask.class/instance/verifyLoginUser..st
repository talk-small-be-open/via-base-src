as yet unclassified
verifyLoginUser: aUser
	"We open a login dialog, if the same user is not already logged in"
	(self currentUser == aUser)
		ifFalse: [
			self call: (VIALoginComponent new
				email: aUser email;
				beEmailLocked;
				addDecoration: VIACenterContainerDecoration new;
				yourself) onAnswer: [self restart]
		]