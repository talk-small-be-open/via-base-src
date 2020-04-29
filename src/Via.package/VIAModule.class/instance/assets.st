as yet unclassified
assets
	^(self tasks gather: [:each | each assets]) asSet
		add: imageAsset;
		yourself