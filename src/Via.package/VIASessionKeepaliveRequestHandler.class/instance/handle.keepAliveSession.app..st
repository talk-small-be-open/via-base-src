as yet unclassified
handle: aRequestContext keepAliveSession: aSessionKey app: aString
	| ok |
	ok := false.
	aSessionKey ifNotBlank: [
		(WAAdmin defaultDispatcher handlerAt: aString ifAbsent: [nil]) ifNotNil: [:application |
			[		
			ok := true.
			"Touch cache entry"
			application cache at: aSessionKey ifAbsent: [ok := false].
			] on: Error do: [:error | ok := false ].
		].
	].

	aRequestContext respond: [ :response |
		response
			contentType: WAMimeType textPlain.
		ok
			ifTrue: [
				response
					nextPutAll: 'OK']
			ifFalse: [
				response
					notFound;
					nextPutAll: 'Keepalive error']
		]