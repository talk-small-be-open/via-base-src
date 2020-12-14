as yet unclassified
ensureLoginUser
	self isLoggedIn ifFalse: [
		self call: (VIALoginComponent new
			addDecoration: VIAApplicationManager current mainDecorationClass new;
			addDecoration: VIACenterContainerDecoration new;
			yourself) onAnswer: [ self restart ]
	]