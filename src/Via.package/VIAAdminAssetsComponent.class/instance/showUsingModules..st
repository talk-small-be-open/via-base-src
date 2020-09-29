actions
showUsingModules: anAsset
	| modules |
	modules := self wd findModulesUsingAsset: anAsset.
	self inform: (MCLPlatform joinCollection: (modules collect: #displayName) delimiter: ', ')