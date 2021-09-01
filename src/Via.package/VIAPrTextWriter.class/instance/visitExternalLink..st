visiting-document
visitExternalLink: anExternalLink
	| alias url |
	alias := anExternalLink alias.
	url := anExternalLink reference.
	
	alias = url
		ifTrue: [ canvas nextPutAll: url ]
		ifFalse: [
			canvas nextPutAll: alias.
			canvas nextPutAll: ' ('.
			canvas nextPutAll: url.
			canvas nextPutAll: ')'].