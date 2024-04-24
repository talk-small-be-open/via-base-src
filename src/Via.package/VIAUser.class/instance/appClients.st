accessing
appClients
	appClients ifNil: [ appClients := OrderedCollection new ].
	^ appClients