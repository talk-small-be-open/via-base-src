as yet unclassified
updateRootPwa: anHtmlRoot
	| manifest |

	"Webmanifest, either static or dynamic style"	
	manifest := anHtmlRoot link
		relationship: 'manifest';
		"For a dynamic webmanifest, with potentially different app-id to allow for multiple installations"
		attributeAt: 'crossorigin' put: 'use-credentials';
		yourself. "For Betatest behind credentials"

	self am isUsingDynamicWebmanifests ifTrue: [
		manifest url: ( VIAWebmanifestRequestHandler
			manifestUrlFor: self website id: self session webmanifestId tag: self session webmanifestStartUrlTag )
	].

	self am isUsingStaticWebmanifests ifTrue: [
		manifest url: ('/site/', self website webmanifestFilename).
	].

	anHtmlRoot meta
		name: 'theme-color';
		content: VIAApplicationManager current themeColorForeground.

	self updateRootApple: anHtmlRoot.
	self updateRootMicrosoft: anHtmlRoot.
	self updateRootAndroid: anHtmlRoot
