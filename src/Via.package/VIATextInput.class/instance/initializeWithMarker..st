accessing
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	"Sofern es Buchstaben sind, ist es vermutlich die Lösung"
	aMarker content first isLetter ifTrue: [
		self addSolution: aMarker content]