as yet unclassified
ensureLoginUser
	self isLoggedIn ifFalse: [
		self call: (VIALoginComponent new
			addDecoration: VIACenterContainerDecoration new;
			yourself) onAnswer: [ self restart ]
	]