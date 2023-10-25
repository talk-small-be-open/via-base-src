actions
resetSelectedUsersTerms
	(self confirmYesNo: 'Really reset terms for selected users?') ifTrue: [
		self selectedUsers do: [ :each | each termsAccepted: false ]]