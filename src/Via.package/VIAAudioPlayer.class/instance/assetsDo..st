as yet unclassified
assetsDo: aBlock
	audioAsset ifNotNil: [
		aBlock value: audioAsset ].
	
	VIAPrAssetEvaluator new withPrDocument: transcriptionPillar pillarDocument do: aBlock