finders
findAssetByUuid: aUuid
	^self assets detect: [:each | each uuid = aUuid] ifNone: [nil]