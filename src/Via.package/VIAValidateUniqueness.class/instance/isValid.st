testing
isValid
	| existingObject v |

	self ifBlankAndAllowed: [ ^ true ].
	
	v := self attributeValue.
	existingObject := self amongCollection
		detect: [ :each | (self attributeValueOf: each) = v ]
		ifNone: [ nil ].

	^ existingObject isNil
