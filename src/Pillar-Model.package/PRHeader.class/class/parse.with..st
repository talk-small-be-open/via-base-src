instance creation
parse: aString with: aParser
	| index string |
	index := 0. string := aString.
	[ string beginsWithSubCollection: self markup ] whileTrue: [
		index := index + 1.
		string := string allButFirst: self markup size ].
	^ aParser add: (self withAll: (aParser parseTopText: string) level: index)