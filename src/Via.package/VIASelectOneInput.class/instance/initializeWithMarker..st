as yet unclassified
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	"Sofern es Buchstaben sind, ist es vermutlich die Lösung"
	aMarker content first isLetter ifTrue: [
		self choicesString: ('*', (aMarker content allButFirst: 2))]