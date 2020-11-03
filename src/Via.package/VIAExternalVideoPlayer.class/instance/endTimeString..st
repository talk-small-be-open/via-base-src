accessing
endTimeString: aString
	endTime := aString ifBlank: [nil] ifNotBlank: [:s | Time fromString: s]