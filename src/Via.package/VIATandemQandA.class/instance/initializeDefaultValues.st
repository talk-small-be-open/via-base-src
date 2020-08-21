as yet unclassified
initializeDefaultValues
	super initializeDefaultValues.

	explanationBrick ifNil: [ explanationBrick := VIARichDisplayContent new ].
	questionPillar ifNil: [ questionPillar := VIAPillarSnippet new ].
	answerBrick ifNil: [ answerBrick := VIARichDisplayContent new ].