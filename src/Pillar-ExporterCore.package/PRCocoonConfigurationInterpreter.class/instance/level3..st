private-interpreting
level3: aDictionary
	^ (PRCocoonConfiguration headerConfigurations1 at: (aDictionary at: 'renderAs' ifAbsent: [ 'upperLetter' ]))
		with: aDictionary