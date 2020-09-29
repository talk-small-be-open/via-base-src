as yet unclassified
registerSeasideComponents

	WAAdmin applicationDefaults
		at: #scriptGeneratorClass put: VIAJqScriptGenerator;
		at: #documentClass put: VIAHtmlDocument.

"	WARequestHandlingConfiguration instance
		at: #scriptGeneratorClass put: JQScriptGenerator;
		at: #documentClass put: VIAHtmlDocument."

	"Seaside components"
	VIAFrontendMainTask registerAsApplication.
	VIAAdminMainTask registerAsApplication.
	VIATestdriveMainTask registerAsApplication.
	
	VIASessionKeepaliveRequestHandler register.
	VIAPingRequestHandler register.
	
	"Bestehende SMTP Daten in die Seaside config kopieren"
	VIAApplicationManager installSmtpConfig.