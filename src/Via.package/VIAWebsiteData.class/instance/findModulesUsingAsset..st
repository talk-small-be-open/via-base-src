as yet unclassified
findModulesUsingAsset: anAsset
	^ self modules select: [:each |
		each assets includes: anAsset]