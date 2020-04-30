visiting
start: anObject
	canvas := PRHTMLCanvas on: stream.
	super start: anObject.
	canvas flush