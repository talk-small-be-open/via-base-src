accessing
current
	^ Current ifNil: [ Current := self subclasses anyOne new ]