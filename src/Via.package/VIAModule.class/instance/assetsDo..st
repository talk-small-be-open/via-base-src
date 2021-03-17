as yet unclassified
assetsDo: aBlock
	self tasks do: [:each | each assetsDo: aBlock].
	imageAsset ifNotNil: [
		aBlock value: imageAsset ]