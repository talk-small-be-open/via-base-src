instance creation
parse: aString with: aParser
	| string index type |
	string := aString
		copyFrom: self markupBegin size + 1
		to: aString size - (self markupEnd: self markupBegin) size.
	index := PRMatcherManager
		findFirst: self verbatimTypeSeparator
		at: 1 in: string.
	index isZero ifFalse: [
		type := string copyFrom: 1 to: index - 1.
		(self verbatimTypes includes: type)
			ifTrue: [ string := string copyFrom: index + self verbatimTypeSeparator size to: string size ]
			ifFalse: [ type := nil ] ].
	^ self content: string type: type