finders
hasReleasedModulesUsingAsset: anAsset
	^ self releasedModules anySatisfy: [:each |
		each isUsingAsset: anAsset]