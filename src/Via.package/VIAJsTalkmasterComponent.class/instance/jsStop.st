rendering
jsStop
	| js |

	js := JSStream new.
	js nextPutAll: 'tmStop('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: self roomName.
	js nextPutAll: ');'.

	^ js