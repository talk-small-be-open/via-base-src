as yet unclassified
visitModule: aModule
	super visitModule: aModule.
	
	aModule tasks do: [:each |
		each acceptVisitor: self].
