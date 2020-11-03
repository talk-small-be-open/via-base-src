accessing
startTimeString: aString
	startTime := aString ifBlank: [nil] ifNotBlank: [:s | Time fromString: s]