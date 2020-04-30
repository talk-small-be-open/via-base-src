accessing
level5: aDictionary
	self
		propertyAt: 'level5'
		put: ((HeaderConfigurations at: (aDictionary at: 'renderAs' ifAbsent: [ 'letter' ])) with: aDictionary)