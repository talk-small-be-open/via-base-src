instance creation
with: aDictionary
	| config |
	config := self new
		numbering: (aDictionary at: 'numbering' ifAbsent: [ true ]);
		yourself.
	config numbering
		ifTrue: [ config size: (aDictionary at: 'size' ifAbsent: [ 0 ]) ]
		ifFalse: [ config size: 0 ].
	config parent: nil.
	^ config