finders
findUserByRememberToken: aString
	^users detect: [:each | each rememberToken = aString] ifNone: nil