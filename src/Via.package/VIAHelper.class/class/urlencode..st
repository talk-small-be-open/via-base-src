as yet unclassified
urlencode: aString

	^String streamContents: [:s |
		| urlEncoder |
		urlEncoder := GRPlatform current urlEncoderOn: s.
		
		"TODO? VIAPlatform current toUtf8: "
		urlEncoder nextPutAll: ((GRCodec forEncoding: 'utf-8') encode: aString)].