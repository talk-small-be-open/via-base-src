as yet unclassified
callLoggedInApplication
	self wd demoHitCounter increment.
	
	self applicationComponent: demoClass new.
	self callApplicationComponent.