as yet unclassified
showUsers: aCollection
"	self clear."
	users := aCollection asOrderedCollection.

	self clearSelection.

	batcher := VIABatchedList new
		items: users;
		batchSize: 10;
		yourself