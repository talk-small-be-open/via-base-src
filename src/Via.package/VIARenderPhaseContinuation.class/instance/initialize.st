initialization
initialize

	super initialize.

	self configuration
		at: #scriptGeneratorClass put: VIAJqScriptGenerator;
		at: #documentClass put: VIAHtmlDocument.