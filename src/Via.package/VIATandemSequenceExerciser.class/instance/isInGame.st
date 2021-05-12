testing
isInGame
	stepIndex ifNil: [ ^false ].
	
	^ stepIndex >= firstGameIndex