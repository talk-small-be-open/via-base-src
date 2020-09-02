testing
isBlankIsSolution
	^ self solutions anySatisfy: [ :each | each = self blankPlaceholder ]