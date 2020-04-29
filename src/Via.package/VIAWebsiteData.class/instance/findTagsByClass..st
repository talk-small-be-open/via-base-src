finders
findTagsByClass: aClass
	^tags select: [:each | each isKindOf: aClass]