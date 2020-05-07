as yet unclassified
initialize

	super initialize.
	flashMessages := OrderedCollection new.
	self initializeMenu.
	
"	self addDecoration: VIAMainDecoration new."
	self gotoFirstScreen