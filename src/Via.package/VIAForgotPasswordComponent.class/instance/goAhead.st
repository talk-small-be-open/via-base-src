actions
goAhead
	self findUser.
	user ifNotNil: [
		self sendPasswordResetLink.
		self gotoPage: #success]