logging
simpleLogText: aTextString
	"Simple log version, only on GemStone"
	| text |
	text := DateAndTime now printString, ' ', aTextString.
	GsFile gciLogServer: text.
	
	"Transcript show: text."