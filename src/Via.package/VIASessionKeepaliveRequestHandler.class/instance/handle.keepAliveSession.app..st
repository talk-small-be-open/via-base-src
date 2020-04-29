as yet unclassified
handle: aRequestContext keepAliveSession: aSessionKey app: aString
	| ok |
	ok := false.
	aSessionKey ifNotBlank: [
		(WAAdmin defaultDispatcher handlerAt: aString ifAbsent: [nil]) ifNotNil: [:application |
			[application cache
				notifyRetrieved: nil
				key: aSessionKey.
			ok := true.
			] on: Error do: [:error | "hm, nothing"].
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