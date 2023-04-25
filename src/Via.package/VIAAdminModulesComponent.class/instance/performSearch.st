rendering
performSearch
	| all |

	all := self wd modules.
	searchMatchedTasks := OrderedCollection new.

	modules := all.
		
	"Filter only my"
	showOnlyMy ifTrue: [
		modules := modules select: [ :each | each isContributor: self currentUser ] ].

"	searchString ifNotBlank: [
		modules := modules select: [:each | self matches: each searchString: searchString].
	]."

	"Filter by index"
	indexCodePartial ifNotBlank: [
		modules := modules select: [ :each | each matchesIndexCode: indexCodePartial ]
	].

	"Filter by search text"
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

			foundTasks notEmpty or: [each matchesSearchString: searchString ]]
	].

	modules := modules sortedBySortKey