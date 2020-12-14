as yet unclassified
logoImageFor: aWebsite
	^ self image
		class: 'viaSiteLogo';
		url: ('/site/images/', aWebsite logoFilename);
		yourself