as yet unclassified
germanDateStringFor: aDate
	aDate ifNil: [^''].
	
	^String streamContents: [:stream |
		stream
			nextPutAll: (aDate dayOfMonth asString padLeftTo: 2 with: $0);
			nextPut: $.;
			nextPutAll: (aDate monthIndex asString padLeftTo: 2 with: $0);
			nextPut: $.;
			nextPutAll: aDate year asString]