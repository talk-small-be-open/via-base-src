dialogs
inform: aText title: aTitleString css: aString
	^ self app lightbox: aTitleString component: (VIAInformationComponent new
		message: aText;
		css: aString;
		yourself)