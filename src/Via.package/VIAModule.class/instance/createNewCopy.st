as yet unclassified
createNewCopy
	| copy |
	copy := self copy.
	copy
		beDraft;
		title: ('Copy of ', self title);
		setShortUid: nil;
		createdAt: DateAndTime now.
	
	copy startNewHistory.
	
	self wd addModule: copy.
	
	^copy