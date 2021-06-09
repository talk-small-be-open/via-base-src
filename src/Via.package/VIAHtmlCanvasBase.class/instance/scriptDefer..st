as yet unclassified
scriptDefer: aStringOrJs
	self script: ('(function(code) {
	if (document.readyState!="loading") { code(); }
	else { window.addEventListener("DOMContentLoaded", code) }
})(function() {', aStringOrJs greaseString, '})').