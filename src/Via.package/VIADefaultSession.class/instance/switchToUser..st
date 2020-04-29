switch user
switchToUser: aUser
	"Admin Funktion: Direktes login als anderer User."
	backgroundAdminUser ifNil: [
		backgroundAdminUser := self user].
	self loginUser: aUser