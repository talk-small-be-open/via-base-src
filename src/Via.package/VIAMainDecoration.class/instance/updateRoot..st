as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
	self updateRootSite: anHtmlRoot.
	
	"OPTIMIZE: Performance?"
	self updateRootPwa: anHtmlRoot.
		
	anHtmlRoot htmlAttributes
		at: 'lang' put: self session languageCode.
		
	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA DEVELOPMENT ', self session language.
			anHtmlRoot bodyAttributes addClass: 'development'.
		]
		ifFalse: [
			anHtmlRoot title: (self session website title).
		]