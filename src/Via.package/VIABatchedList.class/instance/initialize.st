initialization
initialize
	super initialize.
	items := Array new.
	self batchSize: 10.
	self currentPage: 1