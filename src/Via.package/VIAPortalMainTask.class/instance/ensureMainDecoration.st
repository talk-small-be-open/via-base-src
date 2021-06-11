adding
ensureMainDecoration
	mainDecoration ifNil: [
		mainDecoration := self am mainPortalDecorationClass new.
		self addDecoration: mainDecoration ]