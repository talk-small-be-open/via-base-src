escaping
unescape: aString
	| input output |
	input := aString readStream.
	output := WriteStream on: (String new: aString size).
	[ input atEnd ] whileFalse: [
		output nextPutAll: (input upTo: $\).
		input atEnd
			ifFalse: [ output nextPut: input next ] ].
	^ output contents