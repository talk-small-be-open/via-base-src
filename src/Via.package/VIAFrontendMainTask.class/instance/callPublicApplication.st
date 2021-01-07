as yet unclassified
callPublicApplication
	| component |
	
	self session ensureUserIsAnonymous.
	
	isEmbedded
		ifTrue: [component := self am mainEmbeddedComponentClass new]
		ifFalse: [component := self am mainPublicComponentClass new].

	self addMainDecoration.
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.