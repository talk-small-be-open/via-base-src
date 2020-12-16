finders
findDemoModulesByFirstIndexCode: aString
	^self demoModules select: [:each | each indexCode first = aString]