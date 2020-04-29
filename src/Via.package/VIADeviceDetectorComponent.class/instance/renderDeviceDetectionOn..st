as yet unclassified
renderDeviceDetectionOn: html
	| anchorTag |
	html div style: 'color: #666; font-size: 80%;'; with: [
		html div: 'Wait while we detect your device size. '.
		anchorTag := html anchor
			style: 'color: #666';
			callback: [ self close ];
			with: 'Press here, if not automatically reloaded ...';
			yourself.
	
		detectionDoneUrl := anchorTag url.
	].

	"Auto-Javascript, will return URL for reload after successful AJAX"
	html script: (
		html jQuery ajax
			callback: [:json | self detectFromJson: json ]
			value: (JSStream on: '
JSON.stringify({
	width: $(window).width(),
	touch: ("ontouchstart" in document.documentElement),
})
');
			onSuccess: ('location.href = url' asFunction: #(url status));
			dataType: 'text'
	)