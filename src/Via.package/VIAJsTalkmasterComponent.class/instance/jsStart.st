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
	js nextPutAll: ')'.

"	sendOnceJs ifNotNil: [ 
		js nextPutAll: '.then(c => {c.send('.
		js javascript: sendOnceJs.
		js nextPutAll: ')})'.

		sendOnceJs := nil.
	].
"

	js nextPutAll: ';'.

	^ js