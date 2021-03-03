rendering
testdriveStart
	p2pComponent := nil.
	sequence removeAllSuchThat: [ :each | each isNumber not ].
	stepIndex := nil.
	self gotoStepIndex: 1