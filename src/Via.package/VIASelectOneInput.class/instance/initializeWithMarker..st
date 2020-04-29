as yet unclassified
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	"Sofern es Buchstaben sind, ist es vermutlich die Lösung"
	aMarker text first isLetter ifTrue: [
		self choicesString: ('*', (aMarker text allButFirst: 2))]
