accessing
latitudeString: anObject
	latitude := [anObject asNumber asFloat] ifError: [ 0 ]