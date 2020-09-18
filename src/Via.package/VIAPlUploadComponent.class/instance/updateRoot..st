as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot javascript defer; url: '/lib/plupload-2.3.1/js/plupload.full.min.js'