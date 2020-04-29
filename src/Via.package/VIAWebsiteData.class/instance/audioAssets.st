accessing
audioAssets
	^ assets select: [:each | each isKindOf: VIAAudioAsset]