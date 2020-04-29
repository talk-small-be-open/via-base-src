as yet unclassified
onetimeDeleteAccountUrlForWebsite: aWebsite
	| command |
	command := VIADeleteUserCommand new
		user: self;
		website: aWebsite;
		store;
		yourself.
		
	^command url