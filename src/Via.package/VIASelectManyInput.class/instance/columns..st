accessing
columns: anObject
	anObject ifBlank: [ columns := nil. ^ self ].
	
	columns := anObject asInteger