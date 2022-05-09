sorting
sortByDefault
	assets sort: [ :a :b | a sortKey <= b sortKey ].
	batcher currentPage: 1