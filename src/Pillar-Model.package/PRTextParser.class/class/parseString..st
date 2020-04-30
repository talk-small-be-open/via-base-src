parsing
parseString: aString
	| string |
	string := self unescape: aString.
	string isEmpty ifTrue: [ ^ #() ].
	^ Array with: (PRText content: string)