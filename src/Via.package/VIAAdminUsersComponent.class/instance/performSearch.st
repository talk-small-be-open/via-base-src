actions
performSearch
	self showUsers: (searchString
		ifBlank: [self wd users]
		ifNotBlank: [(self wd users select: [:each | each matchesSearchString: searchString]) ])