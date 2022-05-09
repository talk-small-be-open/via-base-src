as yet unclassified
checkGemStoneObjectLog
	| errorPrio errors newErrors |
	errorPrio := ObjectLogEntry error.
	
	errors := ObjectLogEntry objectLog select: [ :each |
		each priority = errorPrio ]. "and: [ each hasContinuation ]"
	
	"Cheap trick, to ignore the non-continuation error message, of a standard seaside error. Seaside is saving 2 separate errors per incident."
	errors := errors reject: [ :each | each label = 'Continuation saved to object log' ].
	
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