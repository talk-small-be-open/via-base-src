logging
logError: aMessageText
	| text |
	text := '[ERROR] ', aMessageText greaseString.
	
	"OPTIMIZE: Maybe obsolete?"
	self simpleLogText: text.
	
	"Only GemStone has this method in GRPlatform, strange!"
	VIAHelper isGemStone ifTrue: [
		"Putting error on the object log, so that we get it per mail etc."
		GRPlatform current
			logError: text
			title: 'VIA Application logged error message'
	]