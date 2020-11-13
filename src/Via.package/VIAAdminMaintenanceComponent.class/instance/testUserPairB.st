tests
testUserPairB
	| component |
	component := VIAUserPairingPassiveComponent new.
	component namespace: 'backendTest'.
	
	self lightbox: 'Pairing passive' component: component