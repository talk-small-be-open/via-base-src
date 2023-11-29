as yet unclassified
toUtf8: aString
	^ (GRCodec forEncoding: 'utf-8') encode: aString
"	^aString"