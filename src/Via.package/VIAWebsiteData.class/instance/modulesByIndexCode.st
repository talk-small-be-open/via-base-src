accessing
modulesByIndexCode
	^ self modules sortedBy: [ :each | each indexCode ]