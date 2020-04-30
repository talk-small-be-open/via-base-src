private-interpreting
level1: aDictionary
	^ (PRCocoonConfiguration headerConfigurations1 at: (aDictionary at: 'renderAs' ifAbsent: [ 'roman' ]))
		with: aDictionary