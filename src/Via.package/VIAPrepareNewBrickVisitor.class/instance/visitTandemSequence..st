as yet unclassified
visitTandemSequence: aTandemSequence
	super visitTandemSequence: aTandemSequence.
	
	aTandemSequence startPillarPlayerA pillarDocument: (self defaultPillar: 'startPillarPlayerA' forBrick: aTandemSequence).
	aTandemSequence startPillarPlayerB pillarDocument: (self defaultPillar: 'startPillarPlayerB' forBrick: aTandemSequence).
	aTandemSequence step2PillarPlayerA pillarDocument: (self defaultPillar: 'step2PillarPlayerA' forBrick: aTandemSequence).
	aTandemSequence step2PillarPlayerB pillarDocument: (self defaultPillar: 'step2PillarPlayerB' forBrick: aTandemSequence).