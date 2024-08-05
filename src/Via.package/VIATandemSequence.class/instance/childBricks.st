as yet unclassified
childBricks
	^ OrderedCollection new
		add: startPillarPlayerA;
		add: startPillarPlayerB;
		add: step2PillarPlayerA;
		add: step2PillarPlayerB;
		addAll: self qAndAs;
		yourself