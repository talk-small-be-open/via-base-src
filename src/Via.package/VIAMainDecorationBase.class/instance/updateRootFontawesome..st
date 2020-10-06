as yet unclassified
updateRootFontawesome: anHtmlRoot
	"FontAwesome CDN"
"	anHtmlRoot javascript
		async;
		url: 'https://kit.fontawesome.com/d3b8411a92.js';
		attributeAt: 'crossorigin' put: 'anonymous'."

	anHtmlRoot javascript defer url: '/lib/fontawesome/js/solid.min.js'.
	anHtmlRoot javascript defer url: '/lib/fontawesome/js/regular.min.js'.
	anHtmlRoot javascript defer url: '/lib/fontawesome/js/fontawesome.min.js'.
