rendering
jsSend: anObject
	| js |

	js := JSStream new.
	js nextPutAll: 'p2pSend('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: otherPeerId.
	js nextPutAll: ','.
	js javascript: anObject.
	js nextPutAll: ');'.

	^ js