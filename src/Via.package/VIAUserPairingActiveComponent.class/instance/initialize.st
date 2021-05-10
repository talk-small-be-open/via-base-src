initialization
initialize
	super initialize.
	
	"If we have a recently game mate, then just try to auto pair"
	"Could be done always, but a lastPairedUser indicates gaming activity"
	lastPairedUser ifNotNil: [
		self tryAutoPair
	]