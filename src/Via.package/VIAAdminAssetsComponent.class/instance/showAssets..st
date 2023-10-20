as yet unclassified
showAssets: aCollection
"	self clear."
	assets := aCollection.

	batcher := VIABatchedList new
		items: assets;
		batchSize: batchSize;
		yourself