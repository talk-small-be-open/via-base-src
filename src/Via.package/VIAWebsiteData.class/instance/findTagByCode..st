finders
findTagByCode: aSymbol
	| code |
	code := aSymbol asString.
	^tags detect: [:each | each code = code] ifNone: nil