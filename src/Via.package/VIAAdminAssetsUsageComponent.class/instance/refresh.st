initialization
refresh
	modules := self wd modules sortedBySortKey.
	assetsPerModule := modules map: [ :each | each assets ]