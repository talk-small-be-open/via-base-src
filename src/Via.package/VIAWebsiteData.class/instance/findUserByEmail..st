finders
findUserByEmail: aString
	^users detect: [:each | each email = aString] ifNone: nil