as yet unclassified
checkExist
	| token data |
	token := VIAAurHepUser getClientToken.

	data := (VIAAurHepUser getUserDataId: self hepId clientToken: token).
	
	data ifNil: [ ^ false ].
	
	^ data isDictionary and: [ (data at: 'id') = self hepId ]