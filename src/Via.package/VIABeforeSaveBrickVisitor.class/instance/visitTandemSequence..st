as yet unclassified
visitTandemSequence: aTandemSequence
	super visitTandemSequence: aTandemSequence.
	
	self default: 'startPillarPlayerA' brick: aTandemSequence ifEmpty: aTandemSequence startPillarPlayerA.
	self default: 'startPillarPlayerB' brick: aTandemSequence ifEmpty: aTandemSequence startPillarPlayerB.
	self default: 'step2PillarPlayerA' brick: aTandemSequence ifEmpty: aTandemSequence step2PillarPlayerA.
	self default: 'step2PillarPlayerB' brick: aTandemSequence ifEmpty: aTandemSequence step2PillarPlayerB.
