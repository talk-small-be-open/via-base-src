parsing
parseTopText: aString 
	^ PRTextParser new
		documentParser: self;
		setStream: self stream;
		parse: aString