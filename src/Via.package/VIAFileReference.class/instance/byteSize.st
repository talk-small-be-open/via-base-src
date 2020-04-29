accessing
byteSize
	(byteSize isNil or: [byteSize = 0]) ifTrue: [self readFileSize].
	^ byteSize