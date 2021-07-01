finders
findModulesUsingAsset: anAsset
	^ self modules select: [:each |
		each isUsingAsset: anAsset]