as yet unclassified
previousByIndexCode
	| modules |
	modules := self wd findPublicModulesByFirstIndexCode: self indexCode first.
	^ modules sortedBySortKey before: self ifAbsent: [ nil ]