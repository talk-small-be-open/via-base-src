initialization
clusteredGeocodes
	| grouped |
	grouped := geocodes groupedBy: [:each | each snapTo: self gridUnit ].
	
	^ grouped values collect: [:each | 
		| geocode |
		each size = 1 ifTrue: [ geocode := each anyOne ].
		each size > 1 ifTrue: [
			geocode := (VIAGeocodeCluster with: each)
				locateToFirstChild;
				yourself ].
		geocode
	]