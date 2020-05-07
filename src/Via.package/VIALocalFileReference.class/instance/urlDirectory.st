as yet unclassified
urlDirectory
"	^'http://', self db domain, '/', self fileRelativePath, '/', self fileName"
	self fileRelativePath ifBlank: [^''].
	
	^String streamContents: [:s |
		(self fileRelativePath first = $/) ifFalse: [
			s nextPut: $/].
		s nextPutAll: self fileRelativePath.
		]