as yet unclassified
callPublicApplication
	| component |
	
	self session ensureUserIsAnonymous.
	
	isEmbedded
		ifTrue: [component := VIAMainEmbeddedModuleComponent new]
		ifFalse: [component := VIAApplicationManager current mainPublicComponentClass new].
	
	self applicationComponent: component.
	self executeCommand.

	self callApplicationComponent.
	self clearApplicationComponent.