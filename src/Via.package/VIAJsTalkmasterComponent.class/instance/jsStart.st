rendering
jsStart
	| js |

	js := JSStream new.
	js nextPutAll: 'tmStart('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: self roomName.
	js nextPutAll: ','.
	js javascript: self roomCredential.
	js nextPutAll: ', function(data){'.
	js javascript: onDataJs.
	js nextPutAll: '},'.
	js javascript: sendJs.
	js nextPutAll: ');'.

	^ js