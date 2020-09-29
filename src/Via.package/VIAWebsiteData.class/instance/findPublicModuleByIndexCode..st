finders
findPublicModuleByIndexCode: aString
	^self publicModules detect: [:each | each indexCodeString = aString] ifNone: [ nil ]