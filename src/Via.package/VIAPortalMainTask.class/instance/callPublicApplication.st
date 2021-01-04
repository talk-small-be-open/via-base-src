as yet unclassified
callPublicApplication
	self applicationComponent: VIAApplicationManager current mainPortalComponentClass new.
	self addMainDecoration.

	self callApplicationComponent.