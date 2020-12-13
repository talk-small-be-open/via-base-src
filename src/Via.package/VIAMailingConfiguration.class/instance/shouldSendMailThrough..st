asserting
shouldSendMailThrough: aChannelName
	self isGlobalEnabled ifFalse: [ ^ false ].
	
	^ self isChannelEnabled: aChannelName