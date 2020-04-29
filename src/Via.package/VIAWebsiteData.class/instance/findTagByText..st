finders
findTagByText: aString
	^tags detect: [:each | each isSameMeaning: aString] ifNone: nil