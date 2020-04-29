as yet unclassified
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	self choicesString: ('*', (aMarker text allButFirst: 2))
