actions
deleteUser: aUser
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		aUser deleteOnWebsite: self website.
		self flashMessage: 'User deleted']