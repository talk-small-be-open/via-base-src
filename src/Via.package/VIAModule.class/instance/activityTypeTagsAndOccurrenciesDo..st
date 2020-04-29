as yet unclassified
activityTypeTagsAndOccurrenciesDo: aBlock
	| bag |
	bag := self tasks flatCollect: [:each | each classification activityTypeTags] as: Bag.
	bag doWithOccurrences: aBlock