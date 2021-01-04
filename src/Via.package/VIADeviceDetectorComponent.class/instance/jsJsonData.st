as yet unclassified
jsJsonData
	^ 'JSON.stringify({
	width: (actual("width", "px")),
	touch: ("ontouchstart" in document.documentElement),
	isFullscreenSupported: (typeof Element.prototype.requestFullscreen == "function"),
	detectedBrowser: detectedBrowser,
	isOpera: isOpera,
	isFirefox: isFirefox,
	isSafari: isSafari,
	isIosSafari: isIosSafari,
	isIE: isIE,
	isEdge: isEdge,
	isChrome: isChrome,
	isEdgeChromium: isEdgeChromium,
	isBlink: isBlink,
})
'