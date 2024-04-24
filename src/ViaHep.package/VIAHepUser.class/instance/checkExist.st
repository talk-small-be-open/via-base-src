as yet unclassified
checkExist
	| token data |
	token := self class getClientToken.

	data := (self class getUserDataId: self hepId clientToken: token).
	
	data ifNil: [ ^ false ].
	
	^ data isDictionary and: [ (data at: 'id') = self hepId ]