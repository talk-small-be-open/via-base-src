finders
findModuleByShortUid: aNumber
	^modules detect: [:each | each shortUid = aNumber] ifNone: nil