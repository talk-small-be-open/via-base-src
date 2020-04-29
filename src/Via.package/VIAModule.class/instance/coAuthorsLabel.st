labels
coAuthorsLabel
	^MCLPlatform joinCollection: (self coAuthorUsers collect: #fullName) delimiter: '/'