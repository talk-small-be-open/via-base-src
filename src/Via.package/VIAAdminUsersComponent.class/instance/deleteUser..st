actions
deleteUser: aUser
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		self wd removeUser: aUser.
		self flashMessage: 'User deleted']