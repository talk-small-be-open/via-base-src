initialization
initialize

	super initialize.

	value := nil.
	correctionCount := 0.

	self beUnchecked.
	self snapshotLastCheckedValue.