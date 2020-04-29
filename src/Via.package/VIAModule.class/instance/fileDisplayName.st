as yet unclassified
fileDisplayName
	^MCLPlatform joinCollection: (Array
		with: (self website code)
		with: exerciseLevel
		with: self shortUid greaseString
		with: self urlDisplayName) delimiter: '_'