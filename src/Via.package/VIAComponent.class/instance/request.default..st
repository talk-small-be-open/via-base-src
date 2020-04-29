dialogs
request: aQuestionText default: aDefaultText
	^ self app lightbox: 'dialog:request:title' component: (VIAInputDialog new
		default: aDefaultText;
		messageText: aQuestionText;
		yourself)