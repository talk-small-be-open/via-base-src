initializing
performSearch
	users := (searchString
		ifBlank: [self wd users copy]
		ifNotBlank: [(self wd users select: [:each | each matchesSearchString: searchString]) ]).
		
	users := users select: [ :each | each hasRole: role ].
