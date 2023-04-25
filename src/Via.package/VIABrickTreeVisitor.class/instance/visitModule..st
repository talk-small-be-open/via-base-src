as yet unclassified
visitModule: aModule
	super visitModule: aModule.
	
	currentModule := aModule.
	
	aModule tasks do: [:each |
		each acceptVisitor: self].
