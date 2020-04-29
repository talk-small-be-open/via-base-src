actions
editUser: aUser
	| editor |
	editor := VIAUserEditor model: aUser.
	
	self show: editor