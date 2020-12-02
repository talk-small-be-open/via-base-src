as yet unclassified
updateRootEssentials: anHtmlRoot

	self requestContext response doNotCache.
	
	anHtmlRoot beHtml5.

	anHtmlRoot meta
		charset: 'utf-8'.
		
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

	anHtmlRoot htmlAttributes
		at: 'lang' put: self session languageCode.
		
	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA DEVELOPMENT ', self website title.
			anHtmlRoot bodyAttributes addClass: 'development'.
		]
		ifFalse: [
			anHtmlRoot title: (self session website title).
		].

	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript defer; url: '/js/jquery/jquery.min.js'.

	"Underscore JS"
	anHtmlRoot javascript defer; url: '/js/underscore-min.js'.

	"Mouse/Touch events unifier for dragging, ..."
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/interactjs@1.9.20/dist/interact.min.js'.

	"List drag/drop sorting library"
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js'.

	anHtmlRoot javascript defer; url: '/js/js.cookie.js'.

"	self updateRootFontawesome: anHtmlRoot."

	"Textareas autosizing"
	anHtmlRoot javascript defer; url: '/js/jquery.autosize.js'.

	"Our own library
	REMARK: We do not defer, because some of it we might use in early JavaScript"
	anHtmlRoot javascript url: '/js/lib.js'.