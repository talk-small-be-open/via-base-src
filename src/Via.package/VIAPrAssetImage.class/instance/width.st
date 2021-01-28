accessing
width
	| string |
	string := self parameters at: 'width' ifAbsent: [ ^ nil ].

	^ string asInteger