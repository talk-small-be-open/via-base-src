as yet unclassified
registerSeasideComponents

	WAAdmin applicationDefaults
		at: #scriptGeneratorClass put: VIAJqScriptGenerator;
		at: #documentClass put: VIAHtmlDocument.

	"Register all seaside applications"
	VIAMainTask subclassesDo: [ :each |
		each registerAsApplication.
	].
	
	"Register some auxiliary handlers"
	VIASessionKeepaliveRequestHandler register.
	VIAPingRequestHandler register.
	
	WAAdmin defaultDispatcher defaultName: 'app'.
	
	"Bestehende SMTP Daten in die Seaside config kopieren"
	VIAApplicationManager installSmtpConfig.