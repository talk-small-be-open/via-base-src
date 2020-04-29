accessing
current
	^ Current ifNil: [ Current := self subclasses first new ]