parsing
parseProperties
	| oldPosition |
	
	[ oldPosition := self stream position.
	self stream atEnd not and: [ self parseProperties: self stream nextLine ] ] whileTrue.
	self stream position: oldPosition.