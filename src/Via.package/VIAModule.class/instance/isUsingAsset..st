testing
isUsingAsset: anAsset
	self assetsDo: [ :each |
		each = anAsset ifTrue: [ ^ true ] ].
	
	^ false