as yet unclassified
updateRootJavascripts: anHtmlRoot
	| ws |
	ws := self website.
	
	"Alle Libs für eine gute Darstellung reinnehmen"
	anHtmlRoot javascript url: '/files/js/jquery/jquery-3.4.1.min.js'.

	anHtmlRoot javascript url: '/files/js/scripts.js'.
	anHtmlRoot javascript url: '/files/js/', ws scriptsFilename.

	"FontAwesome CDN"
	anHtmlRoot javascript
		url: 'https://kit.fontawesome.com/d3b8411a92.js';
		attributeAt: 'crossorigin' put: 'anonymous'.

	anHtmlRoot javascript url: '/files/uikit3/dist/js/uikit.min.js'.
	anHtmlRoot javascript url: '/files/uikit3/dist/js/uikit-icons.min.js'.

	"TODO Needed for PDF?"
	anHtmlRoot javascript url: '/files/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript url: '/files/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.

	anHtmlRoot javascript url: '/files/js/jquery.autosize.js'