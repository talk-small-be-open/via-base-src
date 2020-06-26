as yet unclassified
txtForXSendfile
	| instance |
	instance := self extension: 'txt' tempFolder: 'tmp' contentType: 'text/plain'.
	^instance