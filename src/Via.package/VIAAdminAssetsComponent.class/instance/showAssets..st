as yet unclassified
showAssets: aCollection
	self clear.
	assets := aCollection.

	batcher := WABatchedList new
		items: assets;
		batchSize: batchSize;
		yourself