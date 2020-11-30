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
				
	anHtmlRoot title: (self session website title).

	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript url: '/js/jquery/jquery.min.js'.

	anHtmlRoot javascript url: '/js/device-detector.js'.

"	anHtmlRoot javascript defer; url: '/js/js.cookie.js'."
	"Our own library
	REMARK: We do not defer, because some of it we might use in early JavaScript"
"	anHtmlRoot javascript url: '/js/lib.js'."
	

	"CSS from the site repository"
	anHtmlRoot stylesheet url: '/site/css/', self session website stylesheetFilename.
