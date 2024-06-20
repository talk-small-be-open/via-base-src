generators
generatePwaFiles

	"Could be dynamic, see VIAWebmanifestRequestHandler"
	self isUsingStaticWebmanifests ifTrue: [ self generateStaticManifestJson ].
	
	self generatePwaImages.
