as yet unclassified
theOtherData: aUser
	aUser = self pairingUser ifTrue: [ ^ self pairedData ].
	aUser = self pairedUser ifTrue: [ ^ self pairingData ].
	
	^ nil