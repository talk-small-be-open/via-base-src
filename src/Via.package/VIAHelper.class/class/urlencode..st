as yet unclassified
urlencode: aString

	^String streamContents: [:s |
		| urlEncoder |
		urlEncoder := GRPlatform current urlEncoderOn: s.
		
		urlEncoder nextPutAll: aString]