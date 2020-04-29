as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app configuration addParent: WAEmailConfiguration instance.
	
	app
		"exceptionHandler: PPLFrontendErrorHandler;"
		preferenceAt: #sessionClass put: VIADefaultSession;
		preferenceAt: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new;
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation;
		
		"Internal jQuery library"
"		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
"

		addLibrary: VIAStaticResetFileLibrary;

		"For standard external JQuery hosting at Google"
"		addLibrary: JQGoogleLibrary;
		addLibrary: JQUiGoogleLibrary;
		addLibrary: JQBaseTheme;"

		addLibrary: VIAStaticFileLibrary.
"		addLibrary: JQAjaxifierLibrary."

		"Für REST"
"		addFilterFirst: PPLRestfulFilter new."

"	app
		preferenceAt: #smtpServer put: configuration smtpServer;
		preferenceAt: #smtpUsername put: configuration smtpUsername;
		preferenceAt: #smtpPassword put: configuration smtpPassword.
"		
	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler].

"	app cache expiryPolicy configuration at: #cacheTimeout put: (60 * 60 * 1)."

	^ app