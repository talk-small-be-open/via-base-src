accessing
imageAssets
	^ assets select: [:each | each isKindOf: VIAImageAsset]