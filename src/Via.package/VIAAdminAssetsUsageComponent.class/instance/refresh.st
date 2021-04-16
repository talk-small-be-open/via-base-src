initialization
refresh
	modules := self wd modules sortedBySortKey.
	assetsPerModule := modules map: [ :each | each assets sortedBySortKey ].
	
	batcher := WABatchedList new
		items: modules;
		batchSize: 10;
		yourself