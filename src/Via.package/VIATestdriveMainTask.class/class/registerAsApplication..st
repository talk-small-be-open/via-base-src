as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app
		scriptGeneratorClass: VIAJqScriptGenerator;
		sessionClass: VIATestdriveSession;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation.
		
	self configureSession: app.
	self configureExceptionHandler: app.

	^ app