signalling
signalError: aString returnData: aDataObject request: aRequest
	self signalError: (aString, '
RETURN DATA: ', aDataObject printString, '
REQUEST: ', aRequest printString, '
HTTP HEADERS: ', aRequest headers printString).