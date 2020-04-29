as yet unclassified
performSearchQuery: aQuery
	searchResult := self db findWithSearchQuery: aQuery.
	showMap ifTrue: [
		map modules: searchResult results.
	]