as yet unclassified
callApplication
	
	self callDeviceDetector.

	self isLoggedIn
		ifTrue: [self callLoggedInApplication]
		ifFalse: [self callPublicApplication]