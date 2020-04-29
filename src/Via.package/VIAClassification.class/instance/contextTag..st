as yet unclassified
contextTag: anObject
	self contextTags: (OrderedCollection new
		addIfNotNil: anObject;
		yourself)