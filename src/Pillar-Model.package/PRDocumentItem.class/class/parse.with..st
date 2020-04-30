instance creation
parse: aStream with: aParser
	<ignoreForCoverage>
	self error: self name , ' is not supposed to be parsed by ' , aParser printString