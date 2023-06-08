rendering
performSearch
	| all |

	all := self wd modules.
	searchMatchedTasks := OrderedCollection new.

	"Filter only my"
	showOnlyMy ifTrue: [
		all := all select: [ :each | each isContributor: self currentUser ] ].

"	searchString ifNotBlank: [
		all := all select: [:each | self matches: each searchString: searchString].
	]."

	"Filter by index"
	indexCodePartial ifNotBlank: [
		all := all select: [ :each | each matchesIndexCode: indexCodePartial ]
	].

	"Filter by search text"
	(searchBrickType notNil or: [ searchString notBlank ]) ifTrue: [
		| searcher |
		searcher := VIASearchBrickVisitor new.
		searcher searchClass: searchBrickType.
		searcher searchString: searchString.
		
		all := all select: [ :each |
			| foundTasks |
			foundTasks := each tasks select: [ :eachTask |
				searcher start: eachTask.
				searcher isFound ifTrue: [ searchMatchedTasks add: eachTask ].
				searcher isFound ].

			foundTasks notEmpty or: [each matchesSearchString: searchString ]]
	].

	"Filter by draft/published"
	searchPublicationState = #draft ifTrue: [
		all := all select: [ :each | each isDraft ]
	].
	searchPublicationState = #released ifTrue: [
		all := all select: [ :each | each isReleased ]
	].



	all := all sortedBySortKey.
	
	self modules: all.
