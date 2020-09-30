as yet unclassified
assets
	^(self tasks gather: [:each | each assets]) asSet
		addIfNotNil: imageAsset;
		yourself