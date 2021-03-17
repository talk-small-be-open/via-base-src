as yet unclassified
assetsDo: aBlock
	VIAPrAssetEvaluator new withStrings: (self choices collect: [:each | each object]) do: aBlock