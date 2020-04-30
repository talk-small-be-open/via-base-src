accessing
level2: aDictionary
	self propertyAt: 'level2' put: ((HeaderConfigurations at: (aDictionary at: 'renderAs' ifAbsent: [ 'number' ])) with: aDictionary)