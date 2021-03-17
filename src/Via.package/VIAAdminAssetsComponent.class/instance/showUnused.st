as yet unclassified
showUnused
	| unused |
	unused := self wd assets select: [ :each | (self wd isUsedAsset: each) not ].
	self clear.
	self showAssets: unused reversed