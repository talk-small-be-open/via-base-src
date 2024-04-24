as yet unclassified
findAppClientById: aClientId
	^ self appClients detect: [ :each | each id = aClientId ] ifNone: [ nil ]