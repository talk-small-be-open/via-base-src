finders
findModuleByIndexCode: aString
	^modules detect: [:each | each indexCodeString = aString] ifNone: [ nil ]