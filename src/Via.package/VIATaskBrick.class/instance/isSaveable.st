testing
isSaveable
	^ self childBricks anySatisfy: [ :each | each isSaveable ]