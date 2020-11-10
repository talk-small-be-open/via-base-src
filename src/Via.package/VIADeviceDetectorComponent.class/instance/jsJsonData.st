as yet unclassified
jsJsonData
	^ 'JSON.stringify({
	width: $(window).width(),
	touch: ("ontouchstart" in document.documentElement),
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