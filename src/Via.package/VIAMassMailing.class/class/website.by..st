accessing
website: aWebsite by: aUser
	^self basicNew
		setWebsite: aWebsite;
		setSentBy: aUser;
		initialize;
		yourself. 