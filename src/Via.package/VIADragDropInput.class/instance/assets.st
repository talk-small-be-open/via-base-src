as yet unclassified
assets
	^ VIAPrAssetGatherer new assetsOfStrings: (self choices collect: [:each | each object])
