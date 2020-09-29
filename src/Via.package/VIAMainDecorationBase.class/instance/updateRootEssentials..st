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


	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript defer; url: '/js/jquery/jquery-3.4.1.min.js'.

	"Underscore JS"
	anHtmlRoot javascript defer; url: '/js/underscore-min.js'.

	"Mouse/Touch events unifier for dragging, ..."
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/interactjs@1.9.20/dist/interact.min.js'.

	"List drag/drop sorting library"
	anHtmlRoot javascript defer; url: 'https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js'.

	anHtmlRoot javascript defer; url: '/js/js.cookie.js'.

	"FontAwesome CDN"
	anHtmlRoot javascript
		async;
		url: 'https://kit.fontawesome.com/d3b8411a92.js';
		attributeAt: 'crossorigin' put: 'anonymous'.



	"Textareas autosizing"
	anHtmlRoot javascript defer; url: '/js/jquery.autosize.js'.

	"Our own library"
	anHtmlRoot javascript defer url: '/js/lib.js'.