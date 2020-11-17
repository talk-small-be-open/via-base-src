as yet unclassified
ajaxReturnText: aString
	self requestContext respond: [ :response |
		response
			doNotCache;
			contentType: (WAMimeType textPlain charset: self requestContext handler charSet);
			nextPutAll: aString]