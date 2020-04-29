finders
findModuleByTitle: aString
	^modules detect: [:each | each title = aString] ifNone: nil