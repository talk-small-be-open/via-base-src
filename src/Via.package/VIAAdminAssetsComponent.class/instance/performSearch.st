as yet unclassified
performSearch
	assets := searchString
		ifBlank: [self wd assets]
		ifNotBlank: [self wd assets select: [:each | each matchesSearchString: searchString] ]