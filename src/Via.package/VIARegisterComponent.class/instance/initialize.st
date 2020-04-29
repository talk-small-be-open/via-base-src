initialization
initialize

	super initialize.

	email := nil.
	firstName := nil.
	lastName := nil.
	password := nil.
	termsAccepted := false.
	
	disclaimerComponent := VIADisclaimerComponent new
		beEmbedded;
		yourself.
		
	self addCenterContainer