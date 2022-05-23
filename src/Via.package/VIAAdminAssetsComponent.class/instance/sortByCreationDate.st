sorting
sortByCreationDate
	assets sort: [ :a :b | b createdAt <= a createdAt ].
	batcher currentPage: 1