as yet unclassified
javascriptContentOn: aStream
	aStream
		nextPutAll: 'interact("#';
		nextPutAll: id.

	selector ifNotBlank: [
		aStream
			space;
			nextPutAll: selector].

	aStream
		nextPutAll: '")'.