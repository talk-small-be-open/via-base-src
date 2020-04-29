as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	"jQuery, but NO jQuery-UI"
	anHtmlRoot javascript url: '/files/js/jquery/jquery-3.4.1.min.js'.

	"Underscore JS"
	anHtmlRoot javascript url: '/files/js/underscore-min.js'.

	"Mouse/Touch events unifier for dragging, ..."
	anHtmlRoot javascript url: 'https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js'.

	"List drag/drop sorting library"
	anHtmlRoot javascript url: 'https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js'.

	anHtmlRoot javascript url: '/files/js/js.cookie.js'.

	"FontAwesome CDN"
	anHtmlRoot javascript
		url: 'https://kit.fontawesome.com/d3b8411a92.js';
		attributeAt: 'crossorigin' put: 'anonymous'.

	anHtmlRoot stylesheet url: '/files/css/', self session website stylesheetFilename.

	anHtmlRoot javascript url: '/files/uikit3/dist/js/uikit.min.js'.
	anHtmlRoot javascript url: '/files/uikit3/dist/js/uikit-icons.min.js'.


	anHtmlRoot stylesheet url: '/files/js/jquery.webui-popover.min.css'.
	anHtmlRoot javascript url: '/files/js/jquery.webui-popover.min.js'.

	anHtmlRoot javascript url: '/files/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript url: '/files/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.

	"Mediaelement CDN"
	anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelement-and-player.min.js'.
	anHtmlRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelementplayer.min.css'.
	

	"For facebook/google login"
	anHtmlRoot javascript url: '/files/bower_components/hello/dist/hello.all.min.js'.

	"For selecting text ranges"
"	anHtmlRoot javascript url: '/files/bower_components/rangy/rangy-core.js'.
	anHtmlRoot javascript url: '/files/bower_components/rangy/rangy-textrange.js'.
	anHtmlRoot javascript url: '/files/bower_components/rangy/rangy-classapplier.js'.
	anHtmlRoot javascript url: '/files/bower_components/rangy/rangy-highlighter.js'."

	"Textareas autosizing"
	anHtmlRoot javascript url: '/files/js/jquery.autosize.js'.

	"Print helper"
	anHtmlRoot javascript url: '/files/js/printThis/printThis.js'.

	"Maps SVG drawer"
	anHtmlRoot javascript url: '/files/js/raphael.min.js	'.
	anHtmlRoot javascript url: '/files/js/jQuery-Mapael-2.2.0/js/jquery.mapael.min.js'.
	anHtmlRoot javascript url: '/files/js/jQuery-Mapael-2.2.0/js/maps/switzerland.js'.
	anHtmlRoot javascript url: '/files/js/jQuery-Mapael-2.2.0/js/maps/world_countries_miller.js'.

	"Projects main Javascript"
	anHtmlRoot javascript url: '/files/js/scripts.js'.
	anHtmlRoot javascript url: ('/files/js/', self session website scriptsFilename).
	