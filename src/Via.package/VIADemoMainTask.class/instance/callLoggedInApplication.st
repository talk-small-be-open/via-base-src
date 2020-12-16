as yet unclassified
callLoggedInApplication
	self wd demoHitCounter increment.
	
	self applicationComponent: VIAApplicationManager current mainDemoComponentClass new.
	self callApplicationComponent.