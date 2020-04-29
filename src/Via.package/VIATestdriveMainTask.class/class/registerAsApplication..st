as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

"	app configuration addParent: WACacheTimeoutConfiguration instance."

	app
		"exceptionHandler: PPLFrontendErrorHandler;"
		preferenceAt: #sessionClass put: VIATestdriveSession;
"		preferenceAt: #cacheTimeout put: 60;"
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation;
		
		
		addLibrary: VIAStaticResetFileLibrary;

		"For standard external JQuery hosting at Google"
"		addLibrary: JQGoogleLibrary;
		addLibrary: JQUiGoogleLibrary;
		addLibrary: JQBaseTheme;"

		addLibrary: VIAStaticFileLibrary.

	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler].

	^ app