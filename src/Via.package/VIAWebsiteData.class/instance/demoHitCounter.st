as yet unclassified
demoHitCounter
	^ self propertyAt: #demoHitCounter ifAbsentPut: [ RcCounter new ]