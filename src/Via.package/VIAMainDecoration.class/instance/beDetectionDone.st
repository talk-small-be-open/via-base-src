as yet unclassified
beDetectionDone
	self session deviceDetectionDone: true.
	
	self requestContext respond: [ :response |
		response
			doNotCache;
			contentType: (WAMimeType textPlain charset: self requestContext handler charSet);
			nextPutAll: detectionDoneUrl asString]