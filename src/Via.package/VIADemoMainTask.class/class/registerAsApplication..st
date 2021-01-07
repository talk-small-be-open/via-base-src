as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app configuration addParent: WAEmailConfiguration instance.
	
	app
		scriptGeneratorClass: VIAJqScriptGenerator;
		sessionClass: self am demoSessionClass;
		preferenceAt: #trackingStrategy put: WAQueryFieldHandlerTrackingStrategy new;
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation.

	self configureSession: app.
	self configureExceptionHandler: app.

	^ app