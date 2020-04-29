finders
findAdminByEmail: aString
	^self admins detect: [:each | each email = aString] ifNone: nil