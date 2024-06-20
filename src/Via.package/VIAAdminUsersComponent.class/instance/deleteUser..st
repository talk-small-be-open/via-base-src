actions
deleteUser: aUser
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		aUser deleteOnWebsite: self website.
		users remove: aUser.
		self flashMessage: 'User deleted']