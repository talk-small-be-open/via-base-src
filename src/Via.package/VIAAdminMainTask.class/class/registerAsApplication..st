as yet unclassified
registerAsApplication: aName
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: aName.

	app configuration addParent: WAEmailConfiguration instance.

	app
		scriptGeneratorClass: VIAJqScriptGenerator;
		sessionClass: VIAAdminSession;
		
		preferenceAt: #documentClass put: VIAHtmlDocument;
		preferenceAt: #renderPhaseContinuationClass put: VIARenderPhaseContinuation.

"		addLibrary: WANavigationFiles;"

"		addLibrary: VIAStaticFileLibrary;"
"		addLibrary: VIAAdminStaticFileLibrary."

	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler].

	^app