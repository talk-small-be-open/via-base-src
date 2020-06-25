finders
findPublicModulesByIndexCode: aString
	^self publicModules select: [:each | each matchesIndexCode: aString]