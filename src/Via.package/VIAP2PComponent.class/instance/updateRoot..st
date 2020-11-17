updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot javascript defer; url: '/js/peerjs/peerjs.min.js'