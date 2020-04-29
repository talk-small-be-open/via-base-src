logging
logInfo: aMessageText
	| text |
	text := '[INFO] ', aMessageText greaseString.
	
	self simpleLogText: text