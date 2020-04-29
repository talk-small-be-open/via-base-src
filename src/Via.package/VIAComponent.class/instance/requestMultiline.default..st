dialogs
requestMultiline: aQuestionText default: aDefaultText
	^ self app lightbox: 'dialog:request:title' component: (VIAInputDialog new
		beMultiline;
		default: aDefaultText;
		messageText: aQuestionText;
		yourself)