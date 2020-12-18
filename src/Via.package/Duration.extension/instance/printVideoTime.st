*Via
printVideoTime
	^ String streamContents: [ :stream |
		"Format as HH:MM:SS[.S]"
		| h m s cs |
		h := self hours abs.
		m := self minutes abs.
	 	s := self seconds abs truncated.
		cs := (self milliseconds / 10) abs.
		h < 10 ifTrue: [ stream nextPut: $0. ].
		h printOn: stream. stream nextPut: $:.
		m < 10 ifTrue: [ stream nextPut: $0. ].
		m printOn: stream. stream nextPut: $:.
		s < 10 ifTrue: [ stream nextPut: $0. ].
		s printOn: stream.
		cs = 0 ifFalse: [
			stream nextPut: $..
			stream nextPutAll: (cs printString padLeftTo: 2 with: $0).
		].
	]