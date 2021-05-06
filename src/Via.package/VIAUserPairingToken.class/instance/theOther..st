as yet unclassified
theOther: aUser
	aUser = self pairingUser ifTrue: [ ^ self pairedUser ].
	aUser = self pairedUser ifTrue: [ ^ self pairingUser ].
	
	^ nil