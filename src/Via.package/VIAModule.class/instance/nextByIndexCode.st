as yet unclassified
nextByIndexCode
	| modules |
	modules := self wd findPublicModulesByFirstIndexCode: self indexCode first.
	^ modules sortedBySortKey after: self ifAbsent: [ nil ]