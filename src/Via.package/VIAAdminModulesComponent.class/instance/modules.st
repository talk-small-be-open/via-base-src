as yet unclassified
modules
	| modules all |
	all := self wd modules.
	
	modules := showOnlyMy
		ifFalse: [all]
		ifTrue: [all select: [:each | each isContributor: self currentUser]].
		
	^modules sortedBy: #title