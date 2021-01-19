as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot javascript defer; url: '/lib/plupload-2.3.6/js/plupload.full.min.js'.
	
"	anHtmlRoot javascript defer; url: '/lib/plupload-2.3.6/js/moxie.min.js'.
	anHtmlRoot javascript defer; url: '/lib/plupload-2.3.6/js/plupload.dev.js'"