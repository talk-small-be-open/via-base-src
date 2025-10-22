as yet unclassified
logoutKeepRemember
	| theLoggedOutUser |
	theLoggedOutUser := user.
	
	"Logout, but re-install the remember cookie. Thats for special cases only.
	Also for low-security cases where you will have multiple autologin-ready users and your UI gives a choice"

	self logout.

	theLoggedOutUser useAutologin ifTrue: [
		self addAutologinUser: theLoggedOutUser ]