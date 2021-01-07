as yet unclassified
ensureLoginUser
	self isLoggedIn ifFalse: [
		self call: (self am loginComponentClass new
			addDecoration: self am mainDecorationClass new;
			addDecoration: VIACenterContainerDecoration new;
			yourself) onAnswer: [ self restart ]
	]