rendering
testdriveStart
	isTestdrive := true.
	
	self iamPlayerNumber: 1.
"	playerNumber := 1."

	p2pComponent := nil.
	sequence removeAllSuchThat: [ :each | each isNumber not ].
	stepIndex := nil.
	self gotoStepIndex: 1