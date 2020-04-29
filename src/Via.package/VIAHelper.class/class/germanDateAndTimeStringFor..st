as yet unclassified
germanDateAndTimeStringFor: aDateAndTime
	aDateAndTime ifNil: [^''].
	^String streamContents: [:stream |
		stream
			nextPutAll: (aDateAndTime dayOfMonth asString padLeftTo: 2 with: $0);
			nextPut: $.;
			nextPutAll: (aDateAndTime monthIndex asString padLeftTo: 2 with: $0);
			nextPut: $.;
			nextPutAll: aDateAndTime year asString;
			space;
			nextPutAll: (aDateAndTime hour asString padLeftTo: 2 with: $0);
			nextPut: $:;
			nextPutAll: (aDateAndTime minute asString padLeftTo: 2 with: $0).
			]