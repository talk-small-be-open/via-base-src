rendering
jsStop
	| js |

	js := JSStream new.
	js nextPutAll: 'p2pStop('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: otherPeerId.
	js nextPutAll: ');'.

	^ js