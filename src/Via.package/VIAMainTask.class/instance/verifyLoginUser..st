as yet unclassified
verifyLoginUser: aUser
	"We open a login dialog, if the same user is not already logged in"
	(self currentUser == aUser)
		ifFalse: [
			self call: (self am loginComponentClass new
				email: aUser email;
				addDecoration: VIACenterContainerDecoration new;
				yourself) onAnswer: [self restart]
		]