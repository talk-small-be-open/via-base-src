as yet unclassified
callLoggedInApplication
	"Security check, only call the application if user is logged in"
	| component |
	self isLoggedIn ifFalse: [^self].

	isEmbedded
		ifTrue: [component := VIAApplicationManager current mainEmbeddedComponentClass new]
		ifFalse: [component := VIAApplicationManager current mainComponentClass new].

	self addDecoration: VIAApplicationManager current mainDecorationClass new.
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.