as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app configuration addParent: WAEmailConfiguration instance.
	
	app
		scriptGeneratorClass: JQScriptGenerator;
		sessionClass: VIADefaultSession;
		preferenceAt: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation;
		
		addLibrary: VIAStaticResetFileLibrary;

		addLibrary: VIAStaticFileLibrary.

	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler].

	^ app