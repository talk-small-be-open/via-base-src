updating
updateRoot: anHtmlRoot
	self updateRootEssentials: anHtmlRoot.

	anHtmlRoot stylesheet url: '/admin/skeleton/normalize.css'.
	anHtmlRoot stylesheet url: '/admin/skeleton/skeleton.css'.

	anHtmlRoot stylesheet url: '/admin/styles.css'.
	
	anHtmlRoot javascript url: '/admin/js/scripts.js'.
