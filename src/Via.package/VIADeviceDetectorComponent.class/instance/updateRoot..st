updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	"Slim. Use only the really needed."

	self requestContext response doNotCache.
	anHtmlRoot beHtml5.
	anHtmlRoot meta
		charset: 'utf-8'.
		
	"Tell robots not to follow links"
	anHtmlRoot meta
		name: 'ROBOTS';
		content: 'INDEX, NOFOLLOW'.

	"Viewport normalizing. IMPORTANT for correct width detection!"
	anHtmlRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'.

				
	anHtmlRoot title: (self session website title).

	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript url: '/js/jquery/jquery.min.js'.

	"Not really needed, could be done plain JS, but maybe useful later. See https://github.com/ryanve/actual"
	anHtmlRoot javascript url: '/js/actual/actual.js'.
	
"	anHtmlRoot javascript url: '/js/verge/verge.min.js'."

	anHtmlRoot javascript url: '/js/device-detector.js'.

"	anHtmlRoot javascript defer; url: '/js/js.cookie.js'."
	"Our own library
	REMARK: We do not defer, because some of it we might use in early JavaScript"
"	anHtmlRoot javascript url: '/js/lib.js'."
	

	"CSS from the site repository"
	anHtmlRoot stylesheet url: '/site/css/', self session website stylesheetFilename.
