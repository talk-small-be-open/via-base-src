labels
authorsLabel
	^MCLPlatform joinCollection: (self authorUsers collect: #fullName) delimiter: '/'