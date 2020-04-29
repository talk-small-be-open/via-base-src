actions
deleteUser: aUser
	(self confirmYesNo: 'Delete user ', aUser displayName, '?') ifTrue: [
		self wd removeUser: aUser.
		self flashMessage: 'User deleted']