as yet unclassified
javascriptContentOn: aStream
	aStream
		nextPutAll: 'Sortable.create(document.getElementById("';
		nextPutAll: id;
		nextPutAll: '"),';
		javascript: self options;
		nextPutAll: ')'.