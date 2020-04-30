accessing
level3: aDictionary
	self propertyAt: 'level3' put: ((HeaderConfigurations at: (aDictionary at: 'renderAs' ifAbsent: [ 'upperLetter' ])) with: aDictionary)