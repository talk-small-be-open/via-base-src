accessing
modulesByIndexCode
	^ self publicModules sortedBy: [ :each | each indexCode ]