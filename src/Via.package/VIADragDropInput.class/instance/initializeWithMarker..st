as yet unclassified
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	self choicesString: ('*', (aMarker content allButFirst: 2))