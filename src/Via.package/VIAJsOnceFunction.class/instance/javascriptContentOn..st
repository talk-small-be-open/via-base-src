printing
javascriptContentOn: aStream
	"Needs the underscore library. Assumes decorated object is a JSFunction"
	aStream nextPutAll: '_.once('.
	super javascriptContentOn: aStream.
	aStream nextPutAll: ')'