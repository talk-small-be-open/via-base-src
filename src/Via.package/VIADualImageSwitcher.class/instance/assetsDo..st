as yet unclassified
assetsDo: aBlock
	imageAsset1 ifNotNil: [
		aBlock value: imageAsset1 ].
	imageAsset2 ifNotNil: [
		aBlock value: imageAsset2 ]