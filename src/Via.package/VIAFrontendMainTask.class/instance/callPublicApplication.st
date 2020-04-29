as yet unclassified
callPublicApplication
	| component |
	
	self session ensureUserIsAnonymous.
	
	isEmbedded
		ifTrue: [component := VIAMainEmbeddedModuleComponent new]
		ifFalse: [component := VIAMainPublicComponent new].
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.