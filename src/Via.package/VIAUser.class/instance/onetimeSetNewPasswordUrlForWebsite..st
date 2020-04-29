as yet unclassified
onetimeSetNewPasswordUrlForWebsite: aWebsite
	| command |
	command := VIASetNewPasswordCommand new
		user: self;
		website: aWebsite;
		store;
		yourself.
		
	^command url