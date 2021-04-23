as yet unclassified
showUsers: aCollection
"	self clear."
	users := aCollection.

	batcher := WABatchedList new
		items: users;
		batchSize: 100;
		yourself