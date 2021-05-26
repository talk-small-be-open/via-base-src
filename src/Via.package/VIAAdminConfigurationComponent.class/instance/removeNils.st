removing
removeNils

	self db properties keysAndValuesDo: [ :key :value |
		value ifNil: [ self db propertyRemoveAt: key ]
	].

	self db websiteDatasDo: [ :each |
		each properties keysAndValuesDo: [ :key :value |
			value ifNil: [ each propertyRemoveAt: key ]
		].
	
	]