as yet unclassified
choicesString
	^MCLPlatform joinCollection: (choices collect: [:each |
		each first greaseString, ':', each second]) delimiter: String lf