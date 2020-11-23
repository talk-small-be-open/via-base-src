updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	"Dont defer, need it early"
	anHtmlRoot javascript url: '/js/peerjs/peerjs.min.js'.
	anHtmlRoot javascript url: '/js/p2p.js'