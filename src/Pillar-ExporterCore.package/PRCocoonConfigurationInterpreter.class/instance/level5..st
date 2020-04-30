private-interpreting
level5: aDictionary
	^ (PRCocoonConfiguration headerConfigurations1 at: (aDictionary at: 'renderAs' ifAbsent: [ 'letter' ]))
		with: aDictionary