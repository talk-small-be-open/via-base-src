as yet unclassified
demoIsEnabled
	^ (self wd isFeature: #demo) and: [ demoClass notNil ]