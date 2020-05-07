as yet unclassified
url
"	^'http://', self db domain, '/', self fileRelativePath, '/', self fileName"
	
	"Robustness"
	self fileName ifBlank: [^''].
	
	^String streamContents: [:s |
		s nextPutAll: self urlDirectory.
		s nextPut: $/.
		s nextPutAll: self fileName
		]