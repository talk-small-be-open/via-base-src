rendering
performSearch
	| all |
	all := self wd modules.
	
	modules := showOnlyMy
		ifFalse: [all]
		ifTrue: [all select: [:each | each isContributor: self currentUser]].
		
	searchString ifNotBlank: [
		modules := modules select: [:each | self matches: each searchString: searchString].
	].

	modules := modules sortedBySortKey
