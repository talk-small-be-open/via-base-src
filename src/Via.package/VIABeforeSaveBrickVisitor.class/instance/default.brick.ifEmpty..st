as yet unclassified
default: aFragmentKey brick: aBrick ifEmpty: aPillarSnippet
	aPillarSnippet isEmpty ifTrue: [
		aPillarSnippet pillarDocument: (self defaultPillar: aFragmentKey forBrick: aBrick).
	]