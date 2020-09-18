as yet unclassified
scriptDefer: aStringOrJs
	self script: ('window.addEventListener("DOMContentLoaded", function() {', aStringOrJs greaseString, '})')