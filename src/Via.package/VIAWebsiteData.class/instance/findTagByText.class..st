finders
findTagByText: aString class: aClass
	^(self findTagsByClass: aClass) detect: [:each | each isSameMeaning: aString] ifNone: nil