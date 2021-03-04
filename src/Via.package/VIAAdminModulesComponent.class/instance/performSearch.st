rendering
performSearch
	| all |

	all := self wd modules.
	searchMatchedTasks := OrderedCollection new.
	
	modules := showOnlyMy
		ifFalse: [all]
		ifTrue: [all select: [:each | each isContributor: self currentUser]].
		
"	searchString ifNotBlank: [
		modules := modules select: [:each | self matches: each searchString: searchString].
	]."

	(searchBrickType notNil or: [ searchString notBlank ]) ifTrue: [
		| searcher |
		searcher := VIASearchBrickVisitor new.
		searcher searchClass: searchBrickType.
		searcher searchString: searchString.
		
		modules := modules select: [ :each |
			| foundTasks |
			foundTasks := each tasks select: [ :eachTask |
				searcher start: eachTask.
				searcher isFound ifTrue: [ searchMatchedTasks add: eachTask ].
				searcher isFound ].

			foundTasks notEmpty ]
	].

	modules := modules sortedBySortKey