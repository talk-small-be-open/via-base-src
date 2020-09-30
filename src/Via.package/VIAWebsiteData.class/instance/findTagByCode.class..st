finders
findTagByCode: aSymbol class: aClass
	| code |
	code := aSymbol asString.
	^(self findTagsByClass: aClass) detect: [:each | each code = code] ifNone: nil