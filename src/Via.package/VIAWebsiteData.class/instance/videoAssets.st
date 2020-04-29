accessing
videoAssets
	^ assets select: [:each | each isKindOf: VIAVideoAsset]