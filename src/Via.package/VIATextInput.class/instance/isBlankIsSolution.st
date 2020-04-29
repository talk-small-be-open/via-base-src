testing
isBlankIsSolution
	^ self solutions isEmpty or: [ self solutions anySatisfy: [ :each | each isBlank ] ]