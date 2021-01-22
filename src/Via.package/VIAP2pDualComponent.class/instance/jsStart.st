rendering
jsStart
	| js connectTo |

"	connectTo := startConnection ifTrue: [otherPeerId] ifFalse: [nil]."
	"Always connect to be fair"
	connectTo := otherPeerId.
	
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
	js nextPutAll: ','.
	js javascript: self createTurnConfig.
	js nextPutAll: ')'.

	sendOnceJs ifNotNil: [ 
		js nextPutAll: '.then(c => {c.send('.
		js javascript: sendOnceJs.
		js nextPutAll: ')})'.

		sendOnceJs := nil.
	].

	js nextPutAll: ';'.

	^ js