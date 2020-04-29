as yet unclassified
fileReferenceStart: aStart stop: aStop
	| fr |
	
	fr := self fileReference copy.
	fr fileName: (self audioNameStart: aStart stop: aStop).
	
	^fr