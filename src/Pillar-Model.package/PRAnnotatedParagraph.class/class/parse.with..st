instance creation
parse: aString with: aParser
	| string annotation |
	string := aString allButFirst: self markup size.
	annotation := string copyUpTo: Character space.
	string := string copyAfter: Character space.
	^ aParser add: (self withAll: (aParser parseTopText: string) annotation: annotation)