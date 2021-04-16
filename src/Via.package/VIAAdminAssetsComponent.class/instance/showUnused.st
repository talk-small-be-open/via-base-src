as yet unclassified
showUnused
	| unused used all |
"	unused := self wd assets select: [ :each | (self wd isUsedAsset: each) not ]."
	all := self wd assets asSet.
	
	used := self wd modules flatCollectAsSet: [:eachModule |
		eachModule assets ].

	unused := (all difference: used) asOrderedCollection sortedBySortKey.
	
	self clear.
	self showAssets: unused