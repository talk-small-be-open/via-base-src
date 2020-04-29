accessing
longitudeString: anObject
	longitude := [anObject asNumber asFloat] ifError: [ 0 ]