finders
findUserByEmail: aString
	| normalized |
	aString ifBlank: [ ^ nil ].

	normalized := aString asLowercase.
	^ users detect: [ :each | each email = normalized ] ifNone: [ nil ]