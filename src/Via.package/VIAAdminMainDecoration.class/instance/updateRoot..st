updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	
	(self isFeature: #module:geoInformation) ifTrue: [
		self updateRootMaps: anHtmlRoot].
	
	anHtmlRoot htmlAttributes
		at: 'lang' put: 'en'.

	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA ADMIN DEV ', self website title.
		]
		ifFalse: [
			anHtmlRoot title: 'VIA ADMIN', self website title.
		].


	anHtmlRoot stylesheet url: '/admin/skeleton/normalize.css'.
	anHtmlRoot stylesheet url: '/admin/skeleton/skeleton.css'.

	anHtmlRoot stylesheet url: '/admin/styles.css'.
	
	anHtmlRoot javascript defer; url: '/admin/js/scripts.js'.
