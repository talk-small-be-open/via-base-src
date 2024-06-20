as yet unclassified
initialize
	super initialize.
	self detectWebsite.

	deviceDetectionDone := false.
	viewBreakpointS := 640.
	viewBreakpointM := 1024.

	isStandalonePwa := false.
