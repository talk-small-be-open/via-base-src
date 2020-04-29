actions
copyModule: aModule
	| module |
	module := aModule createNewCopy.
	
	module
		addAuthorUser: self currentUser.
	
	self editModule: module