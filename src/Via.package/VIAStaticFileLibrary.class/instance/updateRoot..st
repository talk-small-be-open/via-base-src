as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self essentials: anHtmlRoot.


	"CSS from the site repository"
	anHtmlRoot stylesheet url: '/site/css/', self session website stylesheetFilename.

	anHtmlRoot javascript url: '/lib/uikit3/dist/js/uikit.min.js'.
	anHtmlRoot javascript url: '/lib/uikit3/dist/js/uikit-icons.min.js'.


	anHtmlRoot stylesheet url: '/js/jquery.webui-popover.min.css'.
	anHtmlRoot javascript url: '/js/jquery.webui-popover.min.js'.

	anHtmlRoot javascript url: '/lib/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript url: '/lib/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.

	"Mediaelement CDN"
	anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelement-and-player.min.js'.
	anHtmlRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelementplayer.min.css'.
	

	"For facebook/google login"
	"TODO: Only if needed"
	anHtmlRoot javascript url: '/lib/bower_components/hello/dist/hello.all.min.js'.

	"Print helper"
	anHtmlRoot javascript url: '/js/printThis/printThis.js'.

	"Projects main Javascript"
"	anHtmlRoot javascript url: '/js/scripts.js'."
	anHtmlRoot javascript url: '/site/js/scripts.js'.
	anHtmlRoot javascript url: ('/site/js/', self session website scriptsFilename).