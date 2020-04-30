actions
export
	| trees writer |
	trees := self parseDocuments.
	self fillCountersOf: trees.
	writer := self instantiateWriter
		configuration: self;
		yourself.
	self separateOutputFiles
		ifFalse: [ self write: trees first using: writer ]
		ifTrue: [ self writeAll: trees using: writer ]