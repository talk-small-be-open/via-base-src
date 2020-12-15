as yet unclassified
renderDeviceDetectionOn: html
	| anchorTag |
	html ukContainer with: [
		html div class: 'uk-position-center uk-align-center'; with: [
			html heading
				onClick: (html javascript alert: (JSStream on: self jsJsonData));
				with: self website title.
			html paragraph: [
"Uikit not loaded here				html ukSpinner.
				html space."
				anchorTag := html anchor
					class: 'spinnerMessage';
					callback: [ self finish ];
					t: 'deviceDetector:loading';
					yourself].
	
			detectionDoneUrl := anchorTag url.
	]].

	"Auto-Javascript, will return URL for reload after successful AJAX"
	html scriptDefer: (
		(html jQuery ajax
			callback: [:json | self detectFromJson: json ]
			value: (JSStream on: self jsJsonData);
			onSuccess: ('location.href = answer' asFunction: #(answer));
			dataType: 'text'
	 ) setTimeout: 1000)