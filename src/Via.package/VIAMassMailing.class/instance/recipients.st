private
recipients
	| users |
	users := self websiteData findUsersByAnyRole: toRoles.
	
	self ifHonorSettings: [
		users := users select: [ :each | each mailingConfiguration shouldSendMailThrough: channelName ]
	].
	
	^ users