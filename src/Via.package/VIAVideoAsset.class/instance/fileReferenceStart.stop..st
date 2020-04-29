as yet unclassified
fileReferenceStart: aStart stop: aStop
	| fr |
	
	fr := self fileReference copy.
	fr fileName: (self videoNameStart: aStart stop: aStop).
	
	^fr