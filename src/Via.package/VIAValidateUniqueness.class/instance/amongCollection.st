as yet unclassified
amongCollection
	^ amongCollection ifNil: [ amongCollection := allGetterBlock value copyWithout: self object ]