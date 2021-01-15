finders
findTagByCode: aSymbol class: aClass
	| code |
	code := aSymbol asSymbol.
	^(self findTagsByClass: aClass) detect: [:each | each code = code] ifNone: nil