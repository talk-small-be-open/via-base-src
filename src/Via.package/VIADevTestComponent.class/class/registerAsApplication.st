as yet unclassified
registerAsApplication
	| app  |

	app := WAAdmin 
		register: self
		asApplicationAt: 'devtest'.

"	app configuration addParent: WAEmailConfiguration instance."
	
"	 (GRPlatform current label = 'Pharo')
		ifTrue: [
			app exceptionHandler: WADebugErrorHandler]."

	^ app