as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self essentials: anHtmlRoot.

	anHtmlRoot stylesheet url: '/admin/styles.css'.

	anHtmlRoot stylesheet url: '/admin/skeleton/normalize.css'.
	anHtmlRoot stylesheet url: '/admin/skeleton/skeleton.css'.
	
	anHtmlRoot javascript url: '/admin/js/scripts.js'.
