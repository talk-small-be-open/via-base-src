as yet unclassified
showUnused
	| unused |
	unused := self wd assets select: [ :each | (self wd findModulesUsingAsset: each) isEmpty ].
	self clear.
	self showAssets: unused reversed