accessing
activityTypeTag: anObject
	self activityTypeTags: (OrderedCollection new
		addIfNotNil: anObject;
		yourself)