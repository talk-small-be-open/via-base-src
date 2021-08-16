as yet unclassified
checkGemStoneObjectLog
	| errorPrio errors newErrors |
	errorPrio := ObjectLogEntry error.
	
	errors := ObjectLogEntry objectLog select: [ :each | each priority = errorPrio ].
	
	LastGemStoneObjectLogCheck ifNil: [ LastGemStoneObjectLogCheck := DateAndTime now ].
	newErrors := errors select: [ :each | each stamp >= LastGemStoneObjectLogCheck ].
	
	[
	(newErrors size > 50)
		ifTrue: [
			self sendSysAdminEmailSubject: '50+ application errors' body: 'Please check the object log!'
		]
		ifFalse: [
			newErrors do: [ :each |
				self sendSysAdminEmailSubject: 'Application error' body: each printString].
		].
	LastGemStoneObjectLogCheck := DateAndTime now.
	]
	ifError: [ "ignore" ]