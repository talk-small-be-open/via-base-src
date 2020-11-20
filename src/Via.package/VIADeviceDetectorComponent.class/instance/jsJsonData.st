as yet unclassified
jsJsonData
	^ 'JSON.stringify({
	width: $(window).width(),
	touch: ("ontouchstart" in document.documentElement),
	isFullscreenSupported: (typeof Element.prototype.requestFullscreen == "function"),
	detectedBrowser: detectedBrowser,
	isOpera: isOpera,
	isFirefox: isFirefox,
	isSafari: isSafari,
	isIE: isIE,
	isEdge: isEdge,
	isChrome: isChrome,
	isEdgeChromium: isEdgeChromium,
	isBlink: isBlink,
})
'