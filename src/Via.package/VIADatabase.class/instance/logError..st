logging
logError: aMessageText
	| text |
	text := '[ERROR] ', aMessageText greaseString.
	
	self simpleLogText: text