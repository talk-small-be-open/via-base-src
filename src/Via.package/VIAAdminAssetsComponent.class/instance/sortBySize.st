sorting
sortBySize
	assets sort: [ :a :b | b byteSize <= a byteSize ].
	batcher currentPage: 1