accessing
modules: aCollection
	modules := aCollection.

	batcher := WABatchedList new
		items: modules;
		batchSize: 10;
		yourself