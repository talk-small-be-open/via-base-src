updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	
	anHtmlRoot htmlAttributes
		at: 'lang' put: 'en'.

	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA ADMIN DEVELOPMENT '.
			anHtmlRoot bodyAttributes addClass: 'development'.
		]
		ifFalse: [
			anHtmlRoot title: 'VIA ADMIN'.
		].


	anHtmlRoot stylesheet url: '/admin/skeleton/normalize.css'.
	anHtmlRoot stylesheet url: '/admin/skeleton/skeleton.css'.

	anHtmlRoot stylesheet url: '/admin/styles.css'.
	
	anHtmlRoot javascript defer; url: '/admin/js/scripts.js'.
