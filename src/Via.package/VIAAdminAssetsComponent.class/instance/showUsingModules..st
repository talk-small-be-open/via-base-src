actions
showUsingModules: anAsset
	| modules |
	modules := self wd findModulesUsingAsset: anAsset.
	modules ifEmpty: [ self inform: 'Not used' ] ifNotEmpty: [
		self inform: (MCLPlatform joinCollection: (modules collect: #displayName) delimiter: ', ')]