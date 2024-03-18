as yet unclassified
updateRootPwa: anHtmlRoot

	anHtmlRoot link
		relationship: 'manifest';
		url: '/manifest.webmanifest';
		attributeAt: 'crossorigin' put: 'use-credentials'. "For Betatest behind credentials"

	anHtmlRoot meta
		name: 'theme-color';
		content: VIAApplicationManager current themeColorForeground.

	self updateRootApple: anHtmlRoot.
	self updateRootMicrosoft: anHtmlRoot.
	self updateRootAndroid: anHtmlRoot
