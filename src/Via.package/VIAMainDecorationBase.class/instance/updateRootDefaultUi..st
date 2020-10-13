as yet unclassified
updateRootDefaultUi: anHtmlRoot

	anHtmlRoot javascript defer; url: '/lib/uikit/dist/js/uikit.min.js'.
	anHtmlRoot javascript defer; url: '/lib/uikit/dist/js/uikit-icons.min.js'.

	anHtmlRoot stylesheet url: '/js/jquery.webui-popover.min.css'.
	anHtmlRoot javascript defer; url: '/js/jquery.webui-popover.min.js'.

	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.

	"Mediaelement CDN"
	anHtmlRoot javascript defer url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelement-and-player.min.js'.
	anHtmlRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelementplayer.min.css'.
	

	"Print helper"
	anHtmlRoot javascript defer; url: '/js/printThis/printThis.js'.
