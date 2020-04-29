actions
saveAndClose
	self save.
	self isValid ifTrue: [
		self close]