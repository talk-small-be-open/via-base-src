as yet unclassified
callLoggedInApplication
	"Security check, only call the application if user is logged in"
	self isLoggedIn ifFalse: [^self].

	self applicationComponent: VIAAdminMainComponent new.

	self callApplicationComponent.
	self clearApplicationComponent.