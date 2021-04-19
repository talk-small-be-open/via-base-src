as yet unclassified
checkGemStoneObjectLog
	| errorPrio errors newErrors |
	errorPrio := ObjectLogEntry error.
	
	errors := ObjectLogEntry objectLog select: [ :each | each priority = errorPrio ].
	
	LastGemStoneObjectLogCheck ifNil: [ LastGemStoneObjectLogCheck := DateAndTime now ].
	newErrors := errors select: [ :each | each stamp >= LastGemStoneObjectLogCheck ].
	
	[
	newErrors do: [ :each |
		self sendSysAdminEmailSubject: 'Application error' body: each printString].

	LastGemStoneObjectLogCheck := DateAndTime now.
	]
	ifError: [ "ignore" ]