finders
findAssetsByTitle: aString
	^ self assets select: [ :each | each title = aString ]