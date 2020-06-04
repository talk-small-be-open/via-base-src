finders
findModulesByIndexCode: aString
	^modules select: [:each | each matchesIndexCode: aString]