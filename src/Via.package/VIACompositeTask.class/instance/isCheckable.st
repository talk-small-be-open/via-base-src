testing
isCheckable
	^ self children anySatisfy: [ :each | each isCheckable ]