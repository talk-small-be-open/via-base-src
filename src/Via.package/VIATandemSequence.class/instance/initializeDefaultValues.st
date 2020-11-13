initialization
initializeDefaultValues
	super initializeDefaultValues.

	startPillarPlayerA ifNil: [ startPillarPlayerA := VIAPillarSnippet new ].
	startPillarPlayerB ifNil: [ startPillarPlayerB := VIAPillarSnippet new ].
	
	step2PillarPlayerA ifNil: [ step2PillarPlayerA := VIAPillarSnippet new ].
	step2PillarPlayerB ifNil: [ step2PillarPlayerB := VIAPillarSnippet new ].
