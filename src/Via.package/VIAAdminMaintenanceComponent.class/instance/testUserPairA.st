tests
testUserPairA
	| component |
	component := VIAUserPairingActiveComponent new.
	component namespace: 'backendTest'.
	
	self lightbox: 'Pairing active' component: component