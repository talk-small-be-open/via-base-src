as yet unclassified
visitExternalLink: anExternalLink
	html anchor
		url: anExternalLink reference;
		attributeAt: 'target' put: '_blank';
"		with: anExternalLink alias"
		with: [
			super visitExternalLink: anExternalLink ]