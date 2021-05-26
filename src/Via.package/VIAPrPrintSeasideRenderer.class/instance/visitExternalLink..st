as yet unclassified
visitExternalLink: anExternalLink
	html anchor
		url: anExternalLink reference;
		attributeAt: 'target' put: '_blank';
		with: [
			super visitExternalLink: anExternalLink.
			html text: (' (', anExternalLink reference, ')')
		]