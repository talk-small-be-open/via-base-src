rendering
renderJavascriptOn: html
	| js connectTo |

	connectTo := startConnection ifTrue: [otherPeerId] ifFalse: [nil].
	
	js := JSStream new.
	js nextPutAll: 'p2pStart('.
	js javascript: self elementId.
	js nextPutAll: ','.
	js javascript: thisPeerId.
	js nextPutAll: ','.
	js javascript: connectTo.
	js nextPutAll: ', function(data){'.
	js javascript: onDataJs.
	js nextPutAll: '},'.
	js javascript: sendJs.
	js nextPutAll: ');'.

	html scriptDefer: js