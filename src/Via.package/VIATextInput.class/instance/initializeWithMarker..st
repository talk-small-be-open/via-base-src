accessing
initializeWithMarker: aMarker
	super initializeWithMarker: aMarker.
	
	"Sofern es Buchstaben sind, ist es vermutlich die Lösung"
	aMarker text first isLetter ifTrue: [
		self addSolution: aMarker text]
