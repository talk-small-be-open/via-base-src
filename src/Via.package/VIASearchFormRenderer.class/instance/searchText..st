accessing
searchText: anObject
	anObject ifNotBlank: [
		self ifSimpleSearch: [
			query clear]].
	query text: anObject