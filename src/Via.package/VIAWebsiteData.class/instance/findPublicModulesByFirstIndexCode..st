finders
findPublicModulesByFirstIndexCode: aString
	^self publicModules select: [:each | each indexCode first = aString]