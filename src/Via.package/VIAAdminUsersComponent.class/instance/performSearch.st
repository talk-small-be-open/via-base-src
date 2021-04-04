actions
performSearch
	self showUsers: (searchString
		ifBlank: [self wd users]
		ifNotBlank: [self wd findUsersByText: searchString ])