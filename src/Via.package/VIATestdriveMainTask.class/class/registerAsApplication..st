as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app
		scriptGeneratorClass: JQScriptGenerator;
		sessionClass: VIATestdriveSession;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation;
		
		addLibrary: VIAStaticResetFileLibrary;

		addLibrary: VIAStaticFileLibrary.

	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler].

	^ app