updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot javascript url: '/js/device-detector.js'
