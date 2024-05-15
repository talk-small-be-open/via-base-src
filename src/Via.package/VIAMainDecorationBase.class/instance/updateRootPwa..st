as yet unclassified
updateRootPwa: anHtmlRoot

	anHtmlRoot link
		relationship: 'manifest';
		url: (
			VIAWebmanifestRequestHandler manifestUrlFor: self website id: self session webmanifestId tag: self session webmanifestStartUrlTag
		);
		"For a dynamic webmanifest, with potentially different app-id to allow for multiple installations"
		attributeAt: 'crossorigin' put: 'use-credentials'. "For Betatest behind credentials"

	anHtmlRoot meta
		name: 'theme-color';
		content: VIAApplicationManager current themeColorForeground.

	self updateRootApple: anHtmlRoot.
	self updateRootMicrosoft: anHtmlRoot.
	self updateRootAndroid: anHtmlRoot
