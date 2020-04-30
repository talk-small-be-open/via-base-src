accessing
level1: aDictionary
	self
		propertyAt: 'level1'
		put: ((HeaderConfigurations at: (aDictionary at: 'renderAs' ifAbsent: [ 'roman' ])) with: aDictionary)