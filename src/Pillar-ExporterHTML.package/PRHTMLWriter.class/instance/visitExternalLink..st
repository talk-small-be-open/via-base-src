visiting-document
visitExternalLink: anExternalLink
	canvas tag
		name: 'a';
		parameterAt: 'href' put: anExternalLink reference;
		with: anExternalLink alias