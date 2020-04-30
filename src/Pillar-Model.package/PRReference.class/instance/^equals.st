comparing
= anObject
	^ super = anObject
		and: [ self reference = anObject reference
		and: [ self embedded = anObject embedded
		and: [ self parameters = anObject parameters ] ] ]