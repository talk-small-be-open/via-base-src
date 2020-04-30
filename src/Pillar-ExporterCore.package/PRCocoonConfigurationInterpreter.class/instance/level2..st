private-interpreting
level2: aDictionary
	^ (PRCocoonConfiguration headerConfigurations1 at: (aDictionary at: 'renderAs' ifAbsent: [ 'number' ]))
		with: aDictionary