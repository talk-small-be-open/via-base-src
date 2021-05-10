tests
testUserPairA
	| component |
	component := VIAUserPairingActiveComponent data: 'nothing' namespace: 'backendTest'.
	
	self lightbox: 'Pairing active' component: component