actions
showUsingModules: anAsset
	| modules |
	modules := self wd modules select: [:each |
		each assets includes: anAsset].
	self inform: (MCLPlatform joinCollection: (modules collect: #displayName) delimiter: ', ')