as yet unclassified
write: aText

	GRPlatform current write: (VIAPlatform toUtf8: aText) toFile: self fileName inFolder: self directory
	
"	| textToWrite |
	textToWrite := self isGemStone
		ifTrue: [((GRCodec forEncoding: 'utf-8') encode: aText)]
		ifFalse: [aText].

	file
		nextPutAll: textToWrite;
		flush."