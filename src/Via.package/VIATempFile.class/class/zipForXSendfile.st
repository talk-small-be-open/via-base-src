as yet unclassified
zipForXSendfile
	| instance |
	instance := self extension: 'zip' tempFolder: nil contentType: 'application/zip'.
	instance useSeparateFolder.
	^instance