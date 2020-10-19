accessing
exerciseLevel
	^ self levelTag ifNil: [''] ifNotNil: [:t | t code]