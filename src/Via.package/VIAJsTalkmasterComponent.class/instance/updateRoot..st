updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	"Dont defer, need it early"
	anHtmlRoot javascript url: '/js/talkmaster.js'