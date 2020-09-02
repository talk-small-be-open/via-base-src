printing
javascriptContentOn: aStream
	aStream nextPutAll: 'debounce('.
	super javascriptContentOn: aStream.
	aStream
		nextPutAll: ',';
		javascript: self duration;
		nextPut: $)