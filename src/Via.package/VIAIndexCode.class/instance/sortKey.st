sorting
sortKey
	^ String streamContents: [ :s |
		self parts do: [ :each |
			each isInteger
				ifTrue: [ s << (each printPaddedWith: $0 to: 5) ]
				ifFalse: [ s << each asString ]
		] separatedBy: [ s << '-' ]
	]