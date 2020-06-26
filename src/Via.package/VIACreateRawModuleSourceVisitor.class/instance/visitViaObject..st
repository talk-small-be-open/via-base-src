as yet unclassified
visitViaObject: anObject
	self write: anObject className.
	self indent.
	self newline.
	self writeInstVars: anObject.
	self outdent