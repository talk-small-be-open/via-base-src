rendering
renderContentOn: html
	html paragraph: 'Hi! I'' the developers dream.'.
	html paragraph: counter asString.
	html anchor
		callback: [ self callAnotherMe ];
		with: 'Call another me'.
	html anchor
		callback: [ self answer ];
		with: 'Answer'