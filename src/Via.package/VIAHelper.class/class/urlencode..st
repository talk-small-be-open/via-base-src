as yet unclassified
urlencode: aString

	^ ZnPercentEncoder new encode: aString.

"	String streamContents: [:s |
		| urlEncoder |
		urlEncoder := GRPlatform current urlEncoderOn: s.
		
		""TODO: On pharo umlauts do not work?!
		Maybe work with: ZnPercentEncoder new encode: self
		""
		
		urlEncoder nextPutAll: aString ""(VIAPlatform current toUtf8: aString)""
		
		]."