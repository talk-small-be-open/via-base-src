parsing
parse
	"Parse the input from the given stream and answer a *PRDocument*."

	| line |
	self parseProperties.
	line := 0.
	[ self stream atEnd ]
		whileFalse: [ 
			line := line + 1.
			[ self parseLine: self stream nextLine ]
				on: PRError
				do: [ :exception | PRError signal: exception messageText , ' at line: ' , line asString ] ].
	^ document