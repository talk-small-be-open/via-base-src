dialogs
confirm: aText title: aTitleString buttonText: aButtonString cancelText: aCancelString
	| answerValue |
	answerValue := self app lightbox: aTitleString component: (VIAConfirmationComponent new
		confirmationText: aButtonString;
		cancelText: aCancelString;
		message: aText;
		yourself).

	^answerValue = true