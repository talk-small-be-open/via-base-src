accessing
width
	| string |
	string := self parameters at: 'width' ifAbsent: [
		^ self hasAsset ifTrue: [ asset width ] ifFalse: [ 0 ] ].

	^ string asInteger