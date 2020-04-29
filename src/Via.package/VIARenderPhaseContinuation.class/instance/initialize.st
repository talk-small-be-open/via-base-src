initialization
initialize

	super initialize.

	self configuration
		at: #scriptGeneratorClass put: JQScriptGenerator;
		at: #documentClass put: VIAHtmlDocument.