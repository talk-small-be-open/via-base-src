as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootCookieConsent: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
	self updateRootSite: anHtmlRoot.
	
	"OPTIMIZE: Performance?"
	self updateRootPwa: anHtmlRoot.