as yet unclassified
assetsDo: aBlock
	videoAsset ifNotNil: [
		aBlock value: videoAsset ].
	
	VIAPrAssetEvaluator new withPrDocument: transcriptionPillar pillarDocument do: aBlock