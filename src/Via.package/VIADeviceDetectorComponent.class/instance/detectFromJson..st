as yet unclassified
detectFromJson: aJsonString
	| dict |
	dict := VIAHelper fromJson: aJsonString.

	dict ifNotNil: [
		self viewportWidth: (dict at: 'width' ifAbsent: [1024]).
		self touchEnabled: (dict at: 'touch' ifAbsent: [false]).
		self browserType: (dict at: 'detectedBrowser' ifAbsent: ['unknown']).
		self isFullscreenSupported: (dict at: 'isFullscreenSupported' ifAbsent: [true]) ].
	
	self beDetectionDone.
	
	self requestContext respond: [ :response |
		response
			doNotCache;
			contentType: (WAMimeType textPlain charset: self requestContext handler charSet);
			nextPutAll: detectionDoneUrl asString]