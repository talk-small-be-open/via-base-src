finders
findBackendUserByEmail: aString
	^self backendUsers detect: [:each | each email = aString] ifNone: nil