as yet unclassified
callApplication
	
	"REMARK! Because of a buggy call:/answer system from Seaside 3.3.0 up to latest 3.4.1 we have to
	use only call:onAnswer: and therefore we need to do some other logic. If there is already
	a component on top of the Task then we are not calling the main components further:"
	
	self isExecuting ifTrue: [ ^ self ]. 
	
	
	self callDeviceDetectorOr: [
		self isLoggedIn
			ifTrue: [self callLoggedInApplication]
			ifFalse: [self callPublicApplication]]