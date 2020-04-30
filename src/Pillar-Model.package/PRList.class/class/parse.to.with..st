private
parse: aString to: aGroup with: aParser
	| specification remainder |
	(specification := self specificationFor: aString) isNil
		ifTrue: [ ^ aGroup addAll: (aParser parseTopText: aString) ].
	(aGroup children isEmpty or: [ aGroup children last class ~= specification second ])
		ifTrue: [ aGroup add: specification second new ].
	remainder := aString allButFirst: specification first size.
	(aGroup children last children isEmpty or: [ (self specificationFor: remainder) isNil ])
		ifTrue: [ aGroup children last add: specification third new ].
	^ self parse: remainder to: aGroup children last children last with: aParser