initialization
initialize

	super initialize.

	self addDecoration: VIAMainDecoration new.
	
	self ifDevelopment: [
		self addDecoration: VIADevToolsDecoration new.
	]