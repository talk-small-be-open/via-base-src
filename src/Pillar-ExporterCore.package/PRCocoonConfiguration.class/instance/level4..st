accessing
level4: aDictionary
	self propertyAt: 'level4' put: ((HeaderConfigurations at: (aDictionary at: 'renderAs' ifAbsent: [ 'letter' ])) with: aDictionary)