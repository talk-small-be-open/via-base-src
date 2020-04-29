as yet unclassified
callLoggedInApplication
	"Security check, only call the application if user is logged in"
	| component |
	self isLoggedIn ifFalse: [^self].

	isEmbedded
		ifTrue: [component := VIAMainEmbeddedModuleComponent new]
		ifFalse: [component := VIAMainComponent new].

	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.
