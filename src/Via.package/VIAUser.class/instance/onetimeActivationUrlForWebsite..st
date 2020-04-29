as yet unclassified
onetimeActivationUrlForWebsite: aWebsite
	| command |
	command := VIAActivateUserCommand new
		user: self;
		website: aWebsite;
		store;
		yourself.
		
	^command url