testing
isCheckable
	^ self childBricks anySatisfy: [ :each | each isCheckable ]