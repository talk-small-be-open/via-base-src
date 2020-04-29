as yet unclassified
initialize
	super initialize.
	targetRelativePath := 'uploads'.
"	acceptedMimeTypes := OrderedCollection new."
	uploadSessionUuid := UUID new asString36.
	self clear