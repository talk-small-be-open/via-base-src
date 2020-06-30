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
	anHtmlRoot javascript url: '/js/jquery/jquery-3.4.1.min.js'.

	"Underscore JS"
	anHtmlRoot javascript url: '/js/underscore-min.js'.

	"Mouse/Touch events unifier for dragging, ..."
	anHtmlRoot javascript url: 'https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js'.

	"List drag/drop sorting library"
	anHtmlRoot javascript url: 'https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js'.

	anHtmlRoot javascript url: '/js/js.cookie.js'.

	"FontAwesome CDN"
	anHtmlRoot javascript
		url: 'https://kit.fontawesome.com/d3b8411a92.js';
		attributeAt: 'crossorigin' put: 'anonymous'.



	"Textareas autosizing"
	anHtmlRoot javascript url: '/js/jquery.autosize.js'.

	"Maps SVG drawer"
	anHtmlRoot javascript url: '/js/raphael.min.js	'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/jquery.mapael.min.js'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/maps/switzerland.js'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/maps/world_countries_miller.js'.

	"Our own library"
	anHtmlRoot javascript url: '/js/lib.js'.