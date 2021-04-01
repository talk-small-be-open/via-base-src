initialization
clusteredGeocodes
	^ clusteredGeocodes ifNil: [
		| grouped |
		grouped := geocodes groupedBy: [:each | each snapTo: self gridUnit ].
		
		clusteredGeocodes := grouped values collect: [:each | 
			| geocode |
			each size = 1 ifTrue: [ geocode := each anyOne ].
			each size > 1 ifTrue: [
				geocode := (VIAGeocodeCluster with: each)
					locateToFirstChild;
					yourself ].
			geocode
		].
		clusteredGeocodes
	]