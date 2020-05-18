as yet unclassified
handleFiltered: aRequestContext
	aRequestContext respond: [ :response |
		response
			contentType: WAMimeType textPlain;
			nextPutAll: 'OK']