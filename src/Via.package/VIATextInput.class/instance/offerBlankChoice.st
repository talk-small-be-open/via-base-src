accessing
offerBlankChoice
	^ (offerBlankChoice = true) or: [ self isBlankIsSolution ]