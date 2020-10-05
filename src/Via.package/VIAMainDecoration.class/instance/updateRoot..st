as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.

	"OPTIMIZE: Performance?"
	self updateRootPwa: anHtmlRoot.
		
	anHtmlRoot htmlAttributes
		at: 'lang' put: self session languageCode.
"		at: 'class' put: 'no-js'." "Für modernizr"
		

	self isDevelopment
		ifTrue: [
			anHtmlRoot title: 'VIA DEVELOPMENT ', self session language.
			anHtmlRoot bodyAttributes addClass: 'development'.

"			anHtmlRoot javascript url: 'https://getuikit.com/migrate.min.js'."
		]
		ifFalse: [
			anHtmlRoot title: (self session website title).
		].
	
	"CSS from the site repository"
	anHtmlRoot stylesheet url: '/site/css/', self session website stylesheetFilename.

	anHtmlRoot javascript defer; url: '/lib/uikit/dist/js/uikit.min.js'.
	anHtmlRoot javascript defer; url: '/lib/uikit/dist/js/uikit-icons.min.js'.


	anHtmlRoot stylesheet url: '/js/jquery.webui-popover.min.css'.
	anHtmlRoot javascript defer; url: '/js/jquery.webui-popover.min.js'.

	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.

	"Mediaelement CDN"
	anHtmlRoot javascript defer url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelement-and-player.min.js'.
	anHtmlRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelementplayer.min.css'.
	

	"For facebook/google login"
	"TODO: Only if needed"
	anHtmlRoot javascript defer; url: '/lib/bower_components/hello/dist/hello.all.min.js'.

	"Print helper"
	anHtmlRoot javascript defer; url: '/js/printThis/printThis.js'.

	"Projects main Javascript"
"	anHtmlRoot javascript url: '/js/scripts.js'."
	anHtmlRoot javascript defer; url: '/site/js/scripts.js'.
	anHtmlRoot javascript defer; url: ('/site/js/', self session website scriptsFilename).