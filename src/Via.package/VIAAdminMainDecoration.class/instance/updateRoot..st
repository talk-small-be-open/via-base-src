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
			anHtmlRoot title: 'VIA DEVELOPMENT ADMIN ', self website title.
		]
		ifFalse: [
			anHtmlRoot title: 'VIA ADMIN ', self website title.
		].


	anHtmlRoot stylesheet url: '/admin/skeleton/normalize.css'.
	anHtmlRoot stylesheet url: '/admin/skeleton/skeleton.css'.

	anHtmlRoot stylesheet url: '/admin/styles.css'.

"	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js'.
	anHtmlRoot stylesheet url: 'https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css'."

	"See https://github.com/selectize/selectize.js"
	anHtmlRoot javascript defer; url: '/admin/selectize/selectize.min.js'.
	anHtmlRoot stylesheet url: '/admin/selectize/selectize.default.css'.

	anHtmlRoot javascript defer; url: '/admin/js/scripts.js'.
