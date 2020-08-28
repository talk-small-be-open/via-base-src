as yet unclassified
performSearch
	self showAssets: (searchString
		ifBlank: [self wd assets reversed]
		ifNotBlank: [(self wd assets select: [:each | each matchesSearchString: searchString]) reversed ])