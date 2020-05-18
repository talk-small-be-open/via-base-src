as yet unclassified
callApplication
	
	self callDeviceDetectorOr: [
		self isLoggedIn
			ifTrue: [self callLoggedInApplication]
			ifFalse: [self callPublicApplication]]