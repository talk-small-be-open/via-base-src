as yet unclassified
updateRootEssentials: anHtmlRoot

	self requestContext response doNotCache.
	
	anHtmlRoot beHtml5.

"obsolete. Seaside sets it	anHtmlRoot meta
		charset: 'utf-8'."
		
	"Viewport"
	anHtmlRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'.
	
	"Tell robots not to follow links"
	anHtmlRoot meta
		name: 'ROBOTS';
		content: 'INDEX, NOFOLLOW'.
		
	"Favicon"
	anHtmlRoot link
		beShortcutIcon;
		url: '/favicon.ico'.

	"Alternative favicons"
	VIAHelper faviconImagesData do: [ :each |
		| dimension x |
		x := each first asString.
		dimension := (x, 'x', x).
		anHtmlRoot link
			relationship: 'icon';
			attributeAt: 'sizes' put: dimension;
			url: ('/site/favicons/favicon-', dimension, '.png');
			attributeAt: 'type' put: 'image/png'.
	].

	anHtmlRoot htmlAttributes
		at: 'lang' put: self session languageCode.
		
	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA DEVELOPMENT ', self session websiteTitle.
			anHtmlRoot bodyAttributes addClass: 'development'.
		]
		ifFalse: [
			anHtmlRoot title: (self session websiteTitle).
		].

	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript defer; url: '/js/jquery/jquery.min.js'.

	"Underscore JS"
	anHtmlRoot javascript defer; url: '/js/underscore-min.js'.

	"Mouse/Touch events unifier for dragging, ..."
	"TODO: Maybe only as feature request in a module exerciser?"
	"Previous used version: 1.10.3"
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/interactjs@1.10.11/dist/interact.min.js'.

	"List drag/drop sorting library"
	"TODO: Maybe only as feature request in a module exerciser?"
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js'.


	"Textareas autosizing"
	anHtmlRoot javascript defer; url: '/js/jquery.autosize.js'.

	"REMARK: We do not defer, because some of it we might use in early JavaScript"
	anHtmlRoot javascript url: '/js/js.cookie.js'.

	"Our own library
	REMARK: We do not defer, because some of it we might use in early JavaScript"
	anHtmlRoot javascript url: '/js/lib.js'.
