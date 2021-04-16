testing
hasAnyRole: aCollection
	^ aCollection anySatisfy: [ :each | self hasRole: each ]