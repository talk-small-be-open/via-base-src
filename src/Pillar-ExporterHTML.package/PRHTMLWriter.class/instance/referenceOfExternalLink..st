private
referenceOfExternalLink: anExternalLink
	| localFileIndicator reference |
	localFileIndicator := 'file://'.
	reference := anExternalLink reference.
	^ (reference beginsWith: localFileIndicator)
			ifTrue: [ reference allButFirst: localFileIndicator size ]
			ifFalse: [ reference ]