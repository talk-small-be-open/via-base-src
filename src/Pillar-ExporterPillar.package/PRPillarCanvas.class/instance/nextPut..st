writing text
nextPut: aCharacter
	| string |
	string := PillarCharacters at: aCharacter ifAbsent: nil.
	string isNil
		ifTrue: [ super nextPut: aCharacter ]
		ifFalse: [ self raw: string ].
	lastIsNewLine := false