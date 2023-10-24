signalling
signalError: aString
	
	self logError: ('hep user error: ', aString).
	
	VIAHepUserError signal: aString