as yet unclassified
scriptDefer: aStringOrJs
	aStringOrJs ifBlank: [ ^ self ].

	self script: ('(function(code) {
	if (document.readyState!="loading") { code(); }
	else { document.addEventListener("DOMContentLoaded", code, {once: true} ) }
})(function() {', aStringOrJs greaseString, '})').