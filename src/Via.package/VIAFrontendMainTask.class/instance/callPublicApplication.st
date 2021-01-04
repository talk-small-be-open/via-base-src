as yet unclassified
callPublicApplication
	| component |
	
	self session ensureUserIsAnonymous.
	
	isEmbedded
		ifTrue: [component := VIAApplicationManager current mainEmbeddedComponentClass new]
		ifFalse: [component := VIAApplicationManager current mainPublicComponentClass new].

	self addMainDecoration.
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.