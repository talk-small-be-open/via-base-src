as yet unclassified
assets
	| assets |
	assets := Set new.
	assets addAll: (VIAPrAssetGatherer new assetsOf: pillarDocument).
	assets addAll: (self childBricks gather: [:each | each assets]).
	^ assets