as yet unclassified
renderDeviceDetectionOn: html
	| anchorTag |
	html ukContainer with: [
		html div class: 'uk-position-center uk-align-center'; with: [
"			html span class: 'spinner'; a: 'uk-spinner' p: 'ratio: 3'."
			html heading: self website title.
			html paragraph: [
				anchorTag := html anchor
					class: 'spinnerMessage';
					callback: [ self close ];
					with: 'Loading ...';
					yourself].
	
			detectionDoneUrl := anchorTag url.
	]].

	"Auto-Javascript, will return URL for reload after successful AJAX"
	html scriptDefer: (
		(html jQuery ajax
			callback: [:json | self detectFromJson: json ]
			value: (JSStream on: '
JSON.stringify({
	width: $(window).width(),
	touch: ("ontouchstart" in document.documentElement),
})
');
			onSuccess: ('location.href = url' asFunction: #(url status));
			dataType: 'text'
	 ) setTimeout: 1000)