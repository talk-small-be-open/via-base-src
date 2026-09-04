finders
findUserByEmail: aString
	| normalized |
	aString ifBlank: [ ^ nil ].

	normalized := aString asLowercase.
	
	^ self ifPharo: [
			users detect: [ :each | each email = normalized ] ifNone: [ nil ] ]
		ifGemStone: [
			(GsQuery fromString: ('each.email = ''', aString, '''') on: users) anyIfNone: [ nil ]
		]
