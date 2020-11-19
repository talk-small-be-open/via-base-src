initialization
reset

	value := nil.
	correctionCount := 0.
	points := nil.
	lastAccessDateTime := nil.

	self touch.
	self beUnchecked.
	self snapshotLastCheckedValue.