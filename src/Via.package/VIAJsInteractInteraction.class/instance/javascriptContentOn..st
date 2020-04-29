as yet unclassified
javascriptContentOn: aStream
	"interact(#xyz)"
	aStream
		javascript: self interact.

	"We style the cursors on our own"
	aStream nextPutAll: '.styleCursor(false)'.

	".on(...).on(...)"
	events ifNotNil: [
		events keysAndValuesDo: [:eventName :listeners |
			listeners do: [:each |
				aStream nextPutAll: '.on' .
				JSStream encodeArguments: {eventName. each} on: aStream.
	]]].

	".draggable(...)"
	aStream
		nextPut: $.;
		nextPutAll: self method.
	JSStream encodeArguments: self arguments on: aStream.
	
