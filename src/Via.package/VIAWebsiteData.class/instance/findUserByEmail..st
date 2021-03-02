finders
findUserByEmail: aString
	aString ifBlank: [ ^ nil ].
	^users detect: [:each | each email = aString] ifNone: nil