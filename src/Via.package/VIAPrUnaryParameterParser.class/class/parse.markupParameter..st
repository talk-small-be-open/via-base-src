parses
parse: aString1 markupParameter: aString2
	| index string  parameters |
	index := 1.
	string := aString1.
	parameters := OrderedCollection new.
"	result := Dictionary new."
	[ string isEmpty ] whileFalse: [
		| parameter |
		index := PRMatcherManager findFirst: aString2 at: 1 in: string.
		index := index < 1 
			ifTrue: [ string size ]
			ifFalse: [ index - aString2 size ].
		parameter := string first: index.
		parameters add: parameter.
		string := string allButFirst: (string size min: index + aString2 size)].

	^parameters
"	parameters withIndexDo: [:value :parameterIndex |
		result at: parameterIndex asString put: value].

	^ result"