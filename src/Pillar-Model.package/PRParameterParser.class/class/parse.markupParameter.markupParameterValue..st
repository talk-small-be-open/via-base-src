parses
parse: aString1 markupParameter: aString2 markupParameterValue: aString3
	| index string result parameter |
	index := 1.
	string := aString1.
	result := Dictionary new.
	[ string isEmpty ] whileFalse: [
		index := PRMatcherManager findFirst: aString2 at: 1 in: string.
		index := index < 1 
			ifTrue: [ string size ]
			ifFalse: [ index - aString2 size ].
		parameter := string first: index.
		string := string allButFirst: (string size min: index + aString2 size).
		parameter isEmpty ifFalse: [ 
			index := PRMatcherManager findFirst: aString3 at: 1 in: parameter.
			(index isZero 
				ifTrue: [ result at: (PRTextParser unescape: parameter) put: nil ]
				ifFalse: [ result at:
					(PRTextParser unescape: (parameter copyFrom: 1 to: index - 1))
						put: (PRTextParser unescape: (parameter copyFrom: index + aString3 size to: parameter size)) ]) ] ].
	^ result