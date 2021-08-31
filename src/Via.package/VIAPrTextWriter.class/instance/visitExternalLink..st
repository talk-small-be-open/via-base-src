visiting-document
visitExternalLink: anExternalLink
	canvas nextPutAll: anExternalLink alias.
	canvas nextPutAll: ' ('.
	canvas nextPutAll: anExternalLink reference.
	canvas nextPutAll: ')'.
