as yet unclassified
assetsDo: aBlock
	super assetsDo: aBlock.

	VIAPrAssetEvaluator new withPrDocument: pillarDocument do: aBlock.