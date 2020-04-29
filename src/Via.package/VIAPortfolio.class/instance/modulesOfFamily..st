as yet unclassified
modulesOfFamily: aModule
	^self modules select: [:each | each isSameFamily: aModule]