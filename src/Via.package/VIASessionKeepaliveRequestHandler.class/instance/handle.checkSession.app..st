as yet unclassified
handle: aRequestContext checkSession: aSessionKey app: anAppnameString
	| timeToLive ok |

	ok := false.
	aSessionKey ifNotBlank: [
		self withAppNamed: anAppnameString do: [ :application |		
			[ok := true.
			timeToLive := application cache timeToLive: aSessionKey.
			] on: Error do: [:error | ok := false ].
		]
	].

	aRequestContext respond: [ :response |
		| result |

		ok ifTrue: [
			result := 'OK'.
			timeToLive <= (5*60) ifTrue: [result := 'nearlyExpired']. "5 Minuten"
			timeToLive <= 0 ifTrue: [result := 'expired'].
			response
				contentType: WAMimeType textPlain;
				nextPutAll: result
		] ifFalse: [
			response
				notFound;
				nextPutAll: 'Checkalive error'].
	]