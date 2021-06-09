instance creation
parse: aString with: aParser
	| string annotation |
	string := aString allButFirst: self markupBegin size.
	annotation := string copyUpTo: Character space.
	string := string copyAfter: Character space.
	string := string allButLast: self markupEnd size.
	
"	^ aParser add: (self withAll: (aParser parseTopText: string) annotation: annotation)."
	^ self withAll: (aParser parseTopText: string) annotation: annotation.