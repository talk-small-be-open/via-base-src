dialogs
inform: aText title: aTitleString
	^ self app lightbox: aTitleString component: (VIAInformationComponent new
			message: aText;
			yourself)