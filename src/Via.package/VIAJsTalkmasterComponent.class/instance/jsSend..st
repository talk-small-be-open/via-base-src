rendering
jsSend: anObject
	| js |

	js := JSStream new.
	js nextPutAll: 'tmSend('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: self roomName.
	js nextPutAll: ','.
	js javascript: anObject.
	js nextPutAll: ');'.

	^ js