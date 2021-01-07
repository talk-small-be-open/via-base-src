as yet unclassified
callLoggedInApplication
	"Security check, only call the application if user is logged in"
	| component |
	self isLoggedIn ifFalse: [^self].

	isEmbedded
		ifTrue: [component := self am mainEmbeddedComponentClass new]
		ifFalse: [component := self am mainComponentClass new].

	self addMainDecoration.
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.