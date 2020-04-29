as yet unclassified
parse
	"Wie superclass aber mit Syntax-Error Handling für UI"

	| line lineString |
	self parseProperties.
	line := 0.
	[ self stream atEnd ]
		whileFalse: [ 
			line := line + 1.
			[
			lineString := self stream nextLine.
			self parseLine: lineString]
				on: PRError
				do: [ :exception |
					| viaError |
					viaError := VIAPillarSyntaxError new
						lineNumber: line;
						lineString: lineString;
						syntaxError: exception messageText;
						yourself.

					viaError signal]].
	^document