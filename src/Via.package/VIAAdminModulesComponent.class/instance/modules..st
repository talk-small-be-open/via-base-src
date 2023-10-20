accessing
modules: aCollection
	modules := aCollection.

	batcher := VIABatchedList new
		items: modules;
		batchSize: 10;
		yourself