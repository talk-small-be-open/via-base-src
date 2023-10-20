as yet unclassified
showUsers: aCollection
"	self clear."
	users := aCollection.

	self clearSelection.

	batcher := VIABatchedList new
		items: users;
		batchSize: 10;
		yourself