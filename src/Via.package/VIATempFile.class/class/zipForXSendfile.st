as yet unclassified
zipForXSendfile
	| instance |
	instance := self extension: 'zip' tempFolder: 'tmp' contentType: 'application/zip'.
	instance useSeparateFolder.
	^instance